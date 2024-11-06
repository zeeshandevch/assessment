

import 'package:assessment/config.dart';

abstract class CacheLocalProductsRepo{
  Future<Box> openBox();
  Future<CacheModel?> getCache(Box box, CacheModel cache);
  Future<void> addCache(Box box, CacheModel cache);
  Future<void> clearCache(Box box, CacheModel cache);
}