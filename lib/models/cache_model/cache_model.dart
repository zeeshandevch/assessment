


import 'package:assessment/models/product_model/product_model.dart';
import 'package:hive/hive.dart';

part 'cache_model.g.dart';

@HiveType(typeId: 2)
class CacheModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final List<ProductModel>? products;

  CacheModel({
    required this.id,
    required this.products,
  });
}
