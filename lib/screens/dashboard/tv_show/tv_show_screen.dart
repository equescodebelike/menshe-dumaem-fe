import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/my_fields.dart';
import 'package:admin/screens/dashboard/address_table.dart';
import 'package:admin/screens/dashboard/tv_show/tv_show_table.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../components/header.dart';

import '../components/recent_files.dart';
import '../components/storage_details.dart';

class TvShowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TvShowTable(),
    );
  }
}
