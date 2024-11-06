import 'dart:ui';

import 'package:assessment/config.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final dashCtrl = Get.find<DashboardController>();
  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashCtrl) {
      /// Bottom navigation bar
      return Container(
        color: ColorHelper.blur,
          /// Tabs
          child: TabBar(
            onTap: (val) {
              dashCtrl.tabController?.index = val;
              dashCtrl.update();
            },
            controller: dashCtrl.tabController,
            tabs: dashCtrl.dashLists
                .asMap()
                .entries
                .map(
                  (e) => Tab(
                    icon: Icon(
                      e.value,
                      size: 20,
                      color: ColorHelper.white,
                    ),
                  ),
                )
                .toList(),
            labelColor: ColorHelper.white,
            unselectedLabelColor: ColorHelper.gray,
            indicatorColor: ColorHelper.primaryColor,
          ));
    });
  }
}
