
import 'dart:convert';
import 'dart:developer';

import 'package:assessment/config.dart';
import 'package:assessment/repo/local_storage/product_cache/product_cache_storage.dart';
import 'package:assessment/repo/services/home_service.dart';
import 'package:dartz/dartz.dart';


class HomeController extends GetxController{
  bool isLoading = false;
  String? error;
  List<ProductModel> products = [];
  CacheProductsRepo cacheProductsRepo = CacheProductsRepo();


  @override
  void onReady() {
    getProducts();
    super.onReady();
  }


  // checkingCache() async{
  //   Box box = await cacheProductsRepo.openBox();
  //   CacheModel cacheModel = cacheProductsRepo.;
  // }

  getProducts() async {
    isLoading = true;
    error = null;
    update();

      Either? response = await HomeService.getProducts();
      response!.fold(
            (l) {
              error = l.toString();
          log("Error ==> $l");
        },
            (r) {
          log("products ===> NOT NULL");
          // log("coming => $r");
          List<dynamic> comingList = r as List;
          products =  [
            for(int i=0; i<comingList.length; i++)
              ProductModel(
                    id: comingList[i]["id"],
                  title: comingList[i]["title"],
                  description: comingList[i]["description"],
                  price: comingList[i]["price"].toString(),
                  image: comingList[i]["category"]["image"],
                )

          ];
        },
      );
    isLoading = false;
    update();
  }
}