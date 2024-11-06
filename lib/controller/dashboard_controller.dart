
import 'package:assessment/config.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController{
  int selectIndex = 0;

  TabController? tabController;

  List dashLists = [
    Icons.directions_bike_outlined,
    Icons.map,
    Icons.shopping_cart,
    Icons.person,
    Icons.document_scanner
  ];

  /// All BottomNavigation Pages
  final List<Widget> pages = [
    HomePage(),
    const Center(child: Text("Map"),),
    const Center(child: Text("Cart"),),
    const Center(child: Text("Profile"),),
    const Center(child: Text("Document"),),
  ];

}