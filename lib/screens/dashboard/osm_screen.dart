import 'dart:math';

import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/repository/table_repository.dart';
import 'package:admin/di/app_components.dart';
import 'package:admin/utils/hex_to_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class OsmPage extends StatelessWidget {
  const OsmPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<Main> with OSMMixinObserver {
  late MapController controller;
  ValueNotifier<bool> trackingNotifier = ValueNotifier(false);
  ValueNotifier<bool> showFab = ValueNotifier(false);
  ValueNotifier<bool> disableMapControlUserTracking = ValueNotifier(true);
  ValueNotifier<IconData> userLocationIcon = ValueNotifier(Icons.near_me);
  ValueNotifier<GeoPoint?> lastGeoPoint = ValueNotifier(null);
  List<GeoPoint> geos = [];
  ValueNotifier<GeoPoint?> userLocationNotifier = ValueNotifier(null);
  final mapKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = MapController(
      initPosition: GeoPoint(
        latitude: 51.672,
        longitude: 39.1843,
      ),
      // initMapWithUserPosition: UserTrackingOption(
      //   enableTracking: trackingNotifier.value,
      // ),
      useExternalTracking: disableMapControlUserTracking.value,
    );
    setPoints();
    controller.addObserver(this);
    trackingNotifier.addListener(() async {
      if (userLocationNotifier.value != null && !trackingNotifier.value) {
        await controller.removeMarker(userLocationNotifier.value!);
        userLocationNotifier.value = null;
      }
    });
  }

  Future<void> setPoints() async {
    final repository = AppComponents().tableRepository;
    final list = await repository.getTable();
    if (list.clients != null) {
      for (final client in list.clients!) {
        final address = client.address;
        if (address != null && address.lat != null && address.lon != null) {
          final lat = address.lat!.toDouble();
          final lon = address.lon!.toDouble();
          final point = GeoPoint(latitude: lat, longitude: lon);

          final markerWidget = SvgPicture.asset(
            'assets/icons/mark.svg',
            colorFilter: client.color != null
                ? ColorFilter.mode(hexToColor(client.color!), BlendMode.srcIn)
                : null,
          );

          await controller.addMarker(
            point,
            markerIcon: MarkerIcon(iconWidget: markerWidget),
            angle: 0,
            iconAnchor: IconAnchor(anchor: Anchor.top),
          );
        }
      }
    }
  }

  Future<void> _showClientInfoDialog(int clientId) async {
    try {
      final repository = AppComponents().tableRepository;
      final client = await repository.getClient(clientId);

      // Показываем диалог с информацией
      showDialog(
        context: context,
        builder: (context) {
          return PointerInterceptor(
            child: AlertDialog(
              title: Text('Информация о пользователе'),
              content: _buildClientInfo(client),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Закрыть'),
                ),
              ],
            ),
          );
        },
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Ошибка'),
            content: Text('Не удалось загрузить информацию: $e'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Закрыть'),
              ),
            ],
          );
        },
      );
    }
  }

  Widget _buildClientInfo(ClientDto client) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ID: ${client.id}'),
        if (client.externalId != null) Text('Внешний ID: ${client.externalId}'),
        if (client.gender != null)
          Text('Пол: ${client.gender! ? 'Мужской' : 'Женский'}'),
        if (client.ageMin != null && client.ageMax != null)
          Text('Возраст: ${client.ageMin} - ${client.ageMax} лет'),
        if (client.preferredCategory != null) 
          Text('Любимая категория: ${client.preferredCategory}'),
        if (client.address != null)
          Text('Адрес: ${client.address!.address ?? 'Не указан'}'),
      ],
    );
  }

  Future<void> handleGeoPointClick(GeoPoint geoPoint) async {
    try {
      final repository = AppComponents().tableRepository;
      final list = await repository.getTable();

      // Поиск клиента по координатам
      final client = list.clients?.firstWhere(
        (client) =>
            client.address?.lat?.toDouble() == geoPoint.latitude &&
            client.address?.lon?.toDouble() == geoPoint.longitude,
      );

      if (client == null) {
        // Если клиент не найден
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Ошибка'),
              content: const Text('Клиент для этой точки не найден.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Закрыть'),
                ),
              ],
            );
          },
        );
        return;
      }

      await _showClientInfoDialog(client.id!);
    } catch (e) {
      // Обработка ошибок
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Ошибка'),
            content: Text('Не удалось обработать нажатие: $e'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Закрыть'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Future<void> mapIsReady(bool isReady) async {
    if (isReady) {
      showFab.value = true;
    }
  }

  @override
  void onRegionChanged(Region region) {
    super.onRegionChanged(region);
    if (trackingNotifier.value) {
      final userLocation = userLocationNotifier.value;
      if (userLocation == null ||
          !region.center.isEqual(
            userLocation,
            precision: 1e4,
          )) {
        userLocationIcon.value = Icons.gps_not_fixed;
      } else {
        userLocationIcon.value = Icons.gps_fixed;
      }
    }
  }

  @override
  void onLocationChanged(UserLocation userLocation) async {
    super.onLocationChanged(userLocation);
    if (disableMapControlUserTracking.value && trackingNotifier.value) {
      await controller.moveTo(userLocation);
      if (userLocationNotifier.value == null) {
        await controller.addMarker(
          userLocation,
          markerIcon: const MarkerIcon(
            icon: Icon(Icons.navigation),
          ),
          angle: userLocation.angle,
        );
      } else {
        await controller.changeLocationMarker(
          oldLocation: userLocationNotifier.value!,
          newLocation: userLocation,
          angle: userLocation.angle,
        );
      }
      userLocationNotifier.value = userLocation;
    } else {
      if (userLocationNotifier.value != null && !trackingNotifier.value) {
        await controller.removeMarker(userLocationNotifier.value!);
        userLocationNotifier.value = null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.maybeOf(context)?.viewPadding.top;
    return Stack(
      children: [
        Map(
          onGeoPointClicked: (p0) {
            handleGeoPointClick(p0);
          },
          controller: controller,
        ),
        if (!kReleaseMode || kIsWeb) ...[
          Positioned(
            bottom: 23.0,
            left: 15,
            child: ZoomNavigation(
              controller: controller,
            ),
          )
        ],
        Positioned.fill(
          child: ValueListenableBuilder(
            valueListenable: showFab,
            builder: (context, isVisible, child) {
              if (!isVisible) {
                return const SizedBox.shrink();
              }
              return Stack(
                children: [
                  if (!kIsWeb) ...[
                    Positioned(
                      top: (topPadding ?? 26) + 48,
                      right: 15,
                      child: MapRotation(
                        controller: controller,
                      ),
                    )
                  ],
                  MediaQuery.of(context).size.width < 1100
                      ? Positioned(
                          top: kIsWeb ? 26 : topPadding ?? 26.0,
                          left: 12,
                          child: PointerInterceptor(
                            child: const MainNavigation(),
                          ),
                        )
                      : SizedBox.shrink(),
                  Positioned(
                    bottom: 32,
                    right: 15,
                    child: ActivationUserLocation(
                      controller: controller,
                      trackingNotifier: trackingNotifier,
                      userLocation: userLocationNotifier,
                      userLocationIcon: userLocationIcon,
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

class ZoomNavigation extends StatelessWidget {
  const ZoomNavigation({
    super.key,
    required this.controller,
  });
  final MapController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PointerInterceptor(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              maximumSize: const Size(48, 48),
              minimumSize: const Size(24, 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.white,
              padding: EdgeInsets.zero,
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            onPressed: () async {
              controller.zoomIn();
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        PointerInterceptor(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              maximumSize: const Size(48, 48),
              minimumSize: const Size(24, 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.white,
              padding: EdgeInsets.zero,
            ),
            child: Center(
              child: SvgPicture.asset('assets/icons/minus.svg'),
            ),
            onPressed: () async {
              controller.zoomOut();
            },
          ),
        ),
      ],
    );
  }
}

class MapRotation extends HookWidget {
  const MapRotation({
    super.key,
    required this.controller,
  });
  final MapController controller;
  @override
  Widget build(BuildContext context) {
    final angle = useValueNotifier(0.0);
    return FloatingActionButton(
      key: UniqueKey(),
      onPressed: () async {
        angle.value += 30;
        if (angle.value > 360) {
          angle.value = 0;
        }
        await controller.rotateMapCamera(angle.value);
      },
      heroTag: "RotationMapFab",
      elevation: 1,
      mini: true,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ValueListenableBuilder(
          valueListenable: angle,
          builder: (ctx, angle, child) {
            return AnimatedRotation(
              turns: angle == 0 ? 0 : 360 / angle,
              duration: const Duration(milliseconds: 250),
              child: child!,
            );
          },
          child: Image.asset("asset/compass.png"),
        ),
      ),
    );
  }
}

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      key: UniqueKey(),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      heroTag: "MainMenuFab",
      mini: true,
      backgroundColor: Colors.white,
      child: const Icon(Icons.menu),
    );
  }
}

class DrawerMain extends StatelessWidget {
  const DrawerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return PointerInterceptor(
      child: GestureDetector(
        onHorizontalDragEnd: (_) {
          Scaffold.of(context).closeDrawer();
        },
        child: PointerInterceptor(
          child: Drawer(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.viewPaddingOf(context).top),
                ListTile(
                  onTap: () {},
                  title: const Text("search example"),
                ),
                ListTile(
                  onTap: () {},
                  title: const Text("map with hook example"),
                ),
                PointerInterceptor(
                  child: ListTile(
                    onTap: () async {
                      Scaffold.of(context).closeDrawer();
                      await Navigator.pushNamed(context, '/old-home');
                    },
                    title: const Text("old home example"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Map extends StatelessWidget {
  const Map({
    super.key,
    required this.controller,
    required this.onGeoPointClicked, // Добавляем параметр
  });

  final MapController controller;
  final Function(GeoPoint) onGeoPointClicked; // Колбэк для обработки клика

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      onGeoPointClicked: (geoPoint) async {
        await onGeoPointClicked(geoPoint); // Вызываем переданную функцию
      },
      controller: controller,
      osmOption: OSMOption(
        enableRotationByGesture: true,
        zoomOption: const ZoomOption(
          initZoom: 13,
          minZoomLevel: 3,
          maxZoomLevel: 19,
          stepZoom: 1.0,
        ),
        userLocationMarker: UserLocationMaker(
          personMarker: MarkerIcon(
            iconWidget: SizedBox(
              width: 32,
              height: 64,
              child: SvgPicture.asset(
                "assets/icons/geo_set.svg",
              ),
            ),
          ),
          directionArrowMarker: const MarkerIcon(
            icon: Icon(
              Icons.navigation_rounded,
              size: 48,
            ),
          ),
        ),
        staticPoints: [
          StaticPositionGeoPoint(
            "line 1",
            const MarkerIcon(
              icon: Icon(
                Icons.train,
                color: Colors.green,
                size: 32,
              ),
            ),
            [
              GeoPoint(
                latitude: 47.4333594,
                longitude: 8.4680184,
              ),
              GeoPoint(
                latitude: 47.4317782,
                longitude: 8.4716146,
              ),
            ],
          ),
        ],
        roadConfiguration: const RoadOption(
          roadColor: Colors.blueAccent,
        ),
        showContributorBadgeForOSM: true,
        showDefaultInfoWindow: false,
      ),
    );
  }
}

class SearchLocation extends StatelessWidget {
  const SearchLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField();
  }
}

class ActivationUserLocation extends StatelessWidget {
  final ValueNotifier<bool> trackingNotifier;
  final MapController controller;
  final ValueNotifier<IconData> userLocationIcon;
  final ValueNotifier<GeoPoint?> userLocation;

  const ActivationUserLocation({
    super.key,
    required this.trackingNotifier,
    required this.controller,
    required this.userLocationIcon,
    required this.userLocation,
  });
  @override
  Widget build(BuildContext context) {
    return PointerInterceptor(
      child: GestureDetector(
        behavior: HitTestBehavior.deferToChild,
        onLongPress: () async {
          //await controller.disabledTracking();
          await controller.stopLocationUpdating();
          trackingNotifier.value = false;
        },
        child: FloatingActionButton(
          key: UniqueKey(),
          onPressed: () async {
            if (!trackingNotifier.value) {
              await controller.startLocationUpdating();
              trackingNotifier.value = true;

              //await controller.zoom(5.0);
            } else {
              if (userLocation.value != null) {
                await controller.moveTo(userLocation.value!);
              }
            }
          },
          mini: true,
          heroTag: "UserLocationFab",
          child: ValueListenableBuilder<bool>(
            valueListenable: trackingNotifier,
            builder: (ctx, isTracking, _) {
              if (isTracking) {
                return ValueListenableBuilder<IconData>(
                  valueListenable: userLocationIcon,
                  builder: (context, icon, _) {
                    return Icon(icon);
                  },
                );
              }
              return SvgPicture.asset('assets/icons/geo_set.svg');
            },
          ),
        ),
      ),
    );
  }
}

class DirectionRouteLocation extends StatelessWidget {
  final MapController controller;

  const DirectionRouteLocation({
    super.key,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return PointerInterceptor(
      child: FloatingActionButton(
        key: UniqueKey(),
        onPressed: () async {},
        mini: true,
        heroTag: "directionFab",
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: const Icon(
          Icons.directions,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SearchInMap extends StatefulWidget {
  final MapController controller;

  const SearchInMap({
    super.key,
    required this.controller,
  });
  @override
  State<StatefulWidget> createState() => _SearchInMapState();
}

class _SearchInMapState extends State<SearchInMap> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.addListener(onTextChanged);
  }

  void onTextChanged() {}
  @override
  void dispose() {
    textController.removeListener(onTextChanged);
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: const StadiumBorder(),
        child: TextField(
          controller: textController,
          onTap: () {},
          maxLines: 1,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.zero,
            filled: false,
            isDense: true,
            hintText: "search",
            prefixIcon: Icon(
              Icons.search,
              size: 22,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
