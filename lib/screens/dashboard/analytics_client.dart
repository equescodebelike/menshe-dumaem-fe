import 'package:admin/data/models/client_analytics_dto.dart';
import 'package:admin/di/app_components.dart';
import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ClientAnalyticsPage extends StatefulWidget {
  final int clientId;

  const ClientAnalyticsPage({Key? key, required this.clientId})
      : super(key: key);

  @override
  _ClientAnalyticsPageState createState() => _ClientAnalyticsPageState();
}

class _ClientAnalyticsPageState extends State<ClientAnalyticsPage> {
  late Future<ClientAnalyticsDto> _analyticsFuture;
  late int _currentClientId;

  @override
  void initState() {
    super.initState();
    _currentClientId = widget.clientId;
    _loadAnalytics();
  }

  void _loadAnalytics() {
    final repository = AppComponents().tableRepository;
    _analyticsFuture = repository.getAnalyticsForClient(_currentClientId);
  }

  void _showChangeClientIdDialog() {
    final TextEditingController _idController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Изменить ID клиента'),
        content: TextField(
          controller: _idController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Введите ID клиента',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Отмена'),
          ),
          ElevatedButton(
            onPressed: () {
              final newId = int.tryParse(_idController.text);
              if (newId != null) {
                setState(() {
                  _currentClientId = newId;
                  _loadAnalytics();
                });
                Navigator.of(context).pop();
              }
            },
            child: const Text('Применить'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediaQuery.of(context).size.width < 1100
            ? SizedBox.shrink()
            : Text('Аналитика клиента $_currentClientId'),
        leading: MediaQuery.of(context).size.width < 1100
            ? Row(
                children: [
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: context.read<MenuAppController>().controlMenu,
                    child: const Icon(Icons.menu),
                  ),
                ],
              )
            : const SizedBox.shrink(),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Изменить ID клиента',
            onPressed: _showChangeClientIdDialog,
          ),
          OutlinedButton(
            onPressed: () async {
              final repository = AppComponents().tableRepository;
              final result = await repository
                  .getDownloadAnalyticsProfile(_currentClientId);
              if (result.link != null && result.link!.isNotEmpty) {
                await launchUrlString(result.link!);
              }
            },
            child: const Text('Скачать csv'),
          ),
        ],
      ),
      body: FutureBuilder<ClientAnalyticsDto>(
        future: _analyticsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Ошибка загрузки аналитики: ${snapshot.error}',
                textAlign: TextAlign.center,
              ),
            );
          } else if (snapshot.hasData) {
            final analytics = snapshot.data!;
            return ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildSectionTitle('Рекомендованные каналы'),
                _buildList(analytics.recommendedChannels
                    ?.map((e) => 'Канал №$e')
                    .toList()),
                const SizedBox(height: 16),
                _buildSectionTitle('Рекомендованные пакеты'),
                _buildList(analytics.recommendedPackages),
                const SizedBox(height: 16),
                _buildSectionTitle('Рекомендованные телешоу'),
                _buildList(analytics.recommendedTvShows),
              ],
            );
          } else {
            return const Center(
              child: Text('Нет данных для отображения.'),
            );
          }
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildList(List<String>? items) {
    if (items == null || items.isEmpty) {
      return const Text('Нет данных.');
    }
    return Column(
      children: items
          .map((item) => ListTile(
                title: Text(item),
                leading: const Icon(Icons.check_circle_outline),
              ))
          .toList(),
    );
  }
}
