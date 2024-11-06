
import 'package:assessment/config.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class Dashboard extends StatelessWidget {
  final dashCtrl = Get.lazyPut(() => DashboardController());
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (dashCtrl) {
        return DefaultTabController(
          length: dashCtrl.dashLists.length,
          child: Scaffold(
            backgroundColor:  ColorHelper.bg,

            /// Tab bar view
            body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: dashCtrl.tabController,
                children: dashCtrl.pages),
            /// All tabs
            bottomNavigationBar: BottomNavBar(),
          ),
        );
      },
    );
  }
}
