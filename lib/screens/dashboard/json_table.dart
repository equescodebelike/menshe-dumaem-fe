import 'package:admin/data/models/address_dto.dart';
import 'package:admin/data/models/client_dto.dart';
import 'package:admin/data/models/client_list_dto.dart';
import 'package:admin/screens/dashboard/controllers/menu_app_controller.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ClientDataSource extends DataTableSource {
  final ClientListDto clients;

  ClientDataSource(this.clients);

  @override
  DataRow? getRow(int index) {
    if (index >= clients.list!.length) return null;
    final client = clients.list![index];

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
  int get rowCount => clients.list!.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

// Пример данных
final ClientListDto testClientList = ClientListDto(
  list: [
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

  @override
  Widget build(BuildContext context) {
    final dataSource = ClientDataSource(testClientList);

    return PaginatedDataTable(
      actions: [
        Row(
          children: [
            OutlinedButton(onPressed: () {}, child: Text('Фильтры')),
            SizedBox(
              width: 5,
            ),
            OutlinedButton(
              onPressed: () {},
              child: SvgPicture.asset(
                'assets/images/arrows.svg',
                color: Colors.white,
              ),
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
}
