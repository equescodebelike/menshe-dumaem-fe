import 'dart:convert';

import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/data/repository/table_repository.dart';
import 'package:admin/data/service/table_service.dart';
import 'package:admin/di/app_components.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class JsonTableRequest extends StatelessWidget {
  final TableRepository repository = AppComponents().tableRepository;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ClientListDto>(
      future: repository.getTable(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData) {
          return Center(child: Text('No data available'));
        } else {
          final clientList = snapshot.data!;
          return SingleChildScrollView(
            child: PaginatedDataTable(
              actions: [
                Row(
                  children: [
                    OutlinedButton(onPressed: () {}, child: Text('Фильтрация')),
                    SizedBox(
                      width: 5,
                    ),
                    OutlinedButton(onPressed: () {}, child: Text('Сортировка'))
                  ],
                )
              ],
              header: Text('Client Data'),
              rowsPerPage: 5,
              columns: [
                DataColumn(label: Text('Field')),
                DataColumn(label: Text('Value')),
              ],
              source: ClientDataSource(clientList),
            ),
          );
        }
      },
    );
  }
}

class ClientDataSource extends DataTableSource {
  final ClientListDto clientList;

  ClientDataSource(this.clientList);

  @override
  DataRow? getRow(int index) {
    if (index >= clientList.list!.length) return null;

    final client = clientList.list![index];
    List<Map<String, dynamic>> data = [
      {'Field': 'ID', 'Value': client.id},
      {'Field': 'Gender', 'Value': client.gender},
      {'Field': 'Age Min', 'Value': client.ageMin},
      {'Field': 'Age Max', 'Value': client.ageMax},
      {'Field': 'Address', 'Value': client.address?.address},
      {'Field': 'Latitude', 'Value': client.address?.lat},
      {'Field': 'Longitude', 'Value': client.address?.lon},
      {'Field': 'Flats', 'Value': client.address?.flats},
      {'Field': 'Floors', 'Value': client.address?.floors},
    ];

    return DataRow(cells: [
      DataCell(Text(data[index]['Field'])),
      DataCell(Text(data[index]['Value']?.toString() ?? '')),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => clientList.list!.length;

  @override
  int get selectedRowCount => 0;
}
