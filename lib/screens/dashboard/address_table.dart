import 'dart:io';
import 'dart:typed_data';

import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/di/app_components.dart';
import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ClientDataSource extends DataTableSource {
  final ClientListDto clients;

  ClientDataSource(this.clients);

  @override
  DataRow? getRow(int index) {
    if (index >= clients.clients!.length) return null;
    final client = clients.clients![index];

    return DataRow(
      cells: [
        DataCell(Text(client.id?.toString() ?? 'N/A')),
        DataCell(Text(client.gender == true ? 'Male' : 'Female')),
        DataCell(Text('${client.ageMin ?? 'N/A'} - ${client.ageMax ?? 'N/A'}')),
        DataCell(Text(client.address?.address ?? 'N/A')),
      ],
    );
  }

  @override
  int get rowCount => clients.clients!.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

// Пример данных
final ClientListDto testClientList = ClientListDto(
  clients: [
    ClientDto(
      id: 1,
      gender: true,
      ageMin: 20,
      ageMax: 30,
      address: AddressDto(
          address: '123 Main St',
          lat: Decimal.parse('40.7128'),
          lon: Decimal.parse('-74.0060')),
    ),
    ClientDto(
      id: 2,
      gender: false,
      ageMin: 25,
      ageMax: 35,
      address: AddressDto(
          address: '456 Elm St',
          lat: Decimal.parse('34.0522'),
          lon: Decimal.parse('-118.2437')),
    ),
    ClientDto(
      id: 3,
      gender: true,
      ageMin: 18,
      ageMax: 25,
      address: AddressDto(
          address: '789 Oak St',
          lat: Decimal.parse('51.5074'),
          lon: Decimal.parse('-0.1278')),
    ),
    ClientDto(
      id: 1,
      gender: true,
      ageMin: 20,
      ageMax: 30,
      address: AddressDto(
          address: '123 Main St',
          lat: Decimal.parse('40.7128'),
          lon: Decimal.parse('-74.0060')),
    ),
    ClientDto(
      id: 2,
      gender: false,
      ageMin: 25,
      ageMax: 35,
      address: AddressDto(
          address: '456 Elm St',
          lat: Decimal.parse('34.0522'),
          lon: Decimal.parse('-118.2437')),
    ),
    ClientDto(
      id: 3,
      gender: true,
      ageMin: 18,
      ageMax: 25,
      address: AddressDto(
          address: '789 Oak St',
          lat: Decimal.parse('51.5074'),
          lon: Decimal.parse('-0.1278')),
    ),
    ClientDto(
      id: 1,
      gender: true,
      ageMin: 20,
      ageMax: 30,
      address: AddressDto(
          address: '123 Main St',
          lat: Decimal.parse('40.7128'),
          lon: Decimal.parse('-74.0060')),
    ),
    ClientDto(
      id: 2,
      gender: false,
      ageMin: 25,
      ageMax: 35,
      address: AddressDto(
          address: '456 Elm St',
          lat: Decimal.parse('34.0522'),
          lon: Decimal.parse('-118.2437')),
    ),
    ClientDto(
      id: 3,
      gender: true,
      ageMin: 18,
      ageMax: 25,
      address: AddressDto(
          address: '789 Oak St',
          lat: Decimal.parse('51.5074'),
          lon: Decimal.parse('-0.1278')),
    ),
    ClientDto(
      id: 1,
      gender: true,
      ageMin: 20,
      ageMax: 30,
      address: AddressDto(
          address: '123 Main St',
          lat: Decimal.parse('40.7128'),
          lon: Decimal.parse('-74.0060')),
    ),
    ClientDto(
      id: 2,
      gender: false,
      ageMin: 25,
      ageMax: 35,
      address: AddressDto(
          address: '456 Elm St',
          lat: Decimal.parse('34.0522'),
          lon: Decimal.parse('-118.2437')),
    ),
    ClientDto(
      id: 3,
      gender: true,
      ageMin: 18,
      ageMax: 25,
      address: AddressDto(
          address: '789 Oak St',
          lat: Decimal.parse('51.5074'),
          lon: Decimal.parse('-0.1278')),
    ),
  ],
);

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  Future<void> updateAddressesWeb(Uint8List fileBytes, String fileName) async {
    final repository = AppComponents().tableRepository;
    try {
      final formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(fileBytes, filename: fileName),
      });

      await repository.updateAddresses(formData);
    } on DioException catch (error) {
      throw Exception(
          error.response?.data['message'] ?? 'Error updating addresses');
    }
  }

  Future<void> _uploadFile() async {
    final repository = AppComponents().tableRepository;
    try {
      final r = await repository.getPopularShows(null);
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['csv'],
      );

      if (result == null || result.files.isEmpty) return;

      final fileBytes = result.files.single.bytes;
      final fileName = result.files.single.name;

      if (fileBytes == null) {
        throw Exception('Unable to read file content.');
      }

      await repository.updateAddressesBinary(fileBytes);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    // final dataSource = ClientDataSource(testClientList);
    final repository = AppComponents().tableRepository;

    return FutureBuilder(
        future: repository.getTable(),
        builder: (BuildContext context, AsyncSnapshot<ClientListDto> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            final dataSourceMock = ClientDataSource(testClientList);
            return PaginatedDataTable(
              actions: [
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        _uploadFile();
                      },
                      child: Text('Парсинг csv'),
                    )
                  ],
                )
              ],
              header: MediaQuery.of(context).size.width < 1100
                  ? Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/logout.svg',
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        GestureDetector(
                          onTap: context.read<MenuAppController>().controlMenu,
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/logout.svg',
                        ),
                        SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
              rowsPerPage: 9,
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Пол')),
                DataColumn(label: Text('Разница в возрасте')),
                DataColumn(label: Text('Адрес')),
              ],
              source: dataSourceMock,
            );
          }
          if (snapshot.data == null) {
            final dataSourceMock = ClientDataSource(testClientList);
            return PaginatedDataTable(
              actions: [
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        _uploadFile();
                      },
                      child: Text('Парсинг csv'),
                    )
                  ],
                )
              ],
              header: MediaQuery.of(context).size.width < 1100
                  ? Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/logout.svg',
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        GestureDetector(
                          onTap: context.read<MenuAppController>().controlMenu,
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/logout.svg',
                        ),
                        SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
              rowsPerPage: 9,
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Пол')),
                DataColumn(label: Text('Разница в возрасте')),
                DataColumn(label: Text('Адрес')),
              ],
              source: dataSourceMock,
            );
          } else {
            final dataSource = ClientDataSource(snapshot.data!);
            return PaginatedDataTable(
              actions: [
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        _uploadFile();
                      },
                      child: Text('Парсинг csv'),
                    )
                  ],
                )
              ],
              header: MediaQuery.of(context).size.width < 1100
                  ? Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/logout.svg',
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        GestureDetector(
                          onTap: context.read<MenuAppController>().controlMenu,
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/logout.svg',
                        ),
                        SizedBox(
                          width: 19,
                        ),
                      ],
                    ),
              rowsPerPage: 9,
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Пол')),
                DataColumn(label: Text('Разница в возрасте')),
                DataColumn(label: Text('Адрес')),
              ],
              source: dataSource,
            );
          }
        });
  }
}
