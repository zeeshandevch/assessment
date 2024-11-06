

import 'package:hive/hive.dart';

import '../../../models/product_model/product_model.dart';
import 'cart_storage.dart';

class CartStorageRepo extends CartLocalStorageRepo{

  String boxName = "cart_storage";

  @override
  Future<Box> openBox() async{
    Box box = await Hive.openBox<ProductModel>(boxName);
    return box;
  }

  @override
  List<ProductModel> getCartList(Box box) {
    return box.values.toList() as List<ProductModel>;
  }

  @override
  Future<void> addCartItem(Box box, ProductModel item) async{
    await box.put(item.id, item);
  }

  @override
  Future<void> removeCartItem(Box box, ProductModel item) async{
    await box.delete(item.id);
  }


}