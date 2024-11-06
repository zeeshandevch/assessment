
import 'dart:developer';

import 'package:assessment/config.dart';
import 'package:dartz/dartz.dart';

import '../endpoint/end_points.dart';
import 'base_client.dart';

class HomeService{

  /// GET PRODUCTS
  static Future getProducts() async {
    Either? response = await BaseClient.getMethod(
      ApiEndPoint.products,
      "Get Products",
      null,
    );
    // log("results => $response");
    return response;
  }


}