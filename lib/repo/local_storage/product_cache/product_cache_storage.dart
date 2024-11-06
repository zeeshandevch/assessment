
import 'package:assessment/repo/local_storage/product_cache/product_cache.dart';
import 'package:hive/hive.dart';

import '../../../models/cache_model/cache_model.dart';

class CacheProductsRepo extends CacheLocalProductsRepo{

  String boxName = "cache_storage";

  @override
  Future<Box> openBox() async{
    Box box = await Hive.openBox<CacheModel>(boxName);
    return box;
  }

  @override
  Future<CacheModel> getCache(Box box) async{
    await box.values as CacheModel;
  }

  @override
  Future<void> addCache(Box box, CacheModel cache) async{
    await box.put(cache.id, cache);
  }

  @override
  Future<void> clearCache(Box box, CacheModel cache) async{
    await box.delete(cache.id);
  }


}