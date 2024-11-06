

import 'package:hive_flutter/hive_flutter.dart';
import '../../../models/product_model/product_model.dart';


abstract class CartLocalStorageRepo{
  Future<Box> openBox();
  List<ProductModel> getCartList(Box box);
  Future<void> addCartItem(Box box, ProductModel item);
  Future<void> removeCartItem(Box box, ProductModel item);
}