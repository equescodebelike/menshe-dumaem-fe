import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/my_fields.dart';
import 'package:admin/screens/dashboard/address_table.dart';
import 'package:admin/screens/dashboard/tv_show_table.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/recent_files.dart';
import 'components/storage_details.dart';

class TvShowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: TvShowTable(),
      // child: SingleChildScrollView(
      //   primary: false,
      //   padding: EdgeInsets.all(defaultPadding),
      //   child: Column(
      //     children: [
      //       Header(),
      //       SizedBox(height: defaultPadding),

      // Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      // Expanded(
      //   flex: 5,
      //   child: Column(
      //     children: [
      //       MyFiles(),
      //       SizedBox(height: defaultPadding),
      //       RecentFiles(),
      //       if (Responsive.isMobile(context))
      //         SizedBox(height: defaultPadding),
      //       if (Responsive.isMobile(context)) StorageDetails(),
      //     ],
      //   ),
      // ),
      // if (!Responsive.isMobile(context))
      //   SizedBox(width: defaultPadding),
      // if (!Responsive.isMobile(context))
      //   Expanded(
      //     flex: 2,
      //     child: StorageDetails(),
      //   ),
      //   ],
      // )
      //     ],
      //   ),
      // ),
    );
  }
}
