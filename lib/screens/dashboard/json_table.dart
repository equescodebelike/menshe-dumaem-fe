import 'dart:convert';

import 'package:admin/data/models/client_dto.dart';
import 'package:flutter/material.dart';

class JsonTable extends StatelessWidget {
  final String jsonString = '''
  {
    "id": "1",
    "gender": "Male",
    "ageMin": 20,
    "ageMax": 30,
    "address": {
      "id": "101",
      "gender": "Male",
      "ageMin": 25,
      "ageMax": 35
    }
  }
  ''';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    ClientDto client = ClientDto.fromJson(jsonData);

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
        source: ClientDataSource(client),
      ),
    );
  }
}

class ClientDataSource extends DataTableSource {
  final ClientDto client;

  ClientDataSource(this.client);

  @override
  DataRow? getRow(int index) {
    List<Map<String, dynamic>> data = [
      {'Field': 'ID', 'Value': client.id},
      {'Field': 'Gender', 'Value': client.gender},
      {'Field': 'Age Min', 'Value': client.ageMin},
      {'Field': 'Age Max', 'Value': client.ageMax},
      // {'Field': 'Address ID', 'Value': client.address?.id},
      // {'Field': 'Address Gender', 'Value': client.address?.gender},
      // {'Field': 'Address Age Min', 'Value': client.address?.ageMin},
      // {'Field': 'Address Age Max', 'Value': client.address?.ageMax},
    ];

    if (index >= data.length) return null;

    return DataRow(cells: [
      DataCell(Text(data[index]['Field'])),
      DataCell(Text(data[index]['Value']?.toString() ?? '')),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 8;

  @override
  int get selectedRowCount => 0;
}
