
import 'dart:async';
import '../config.dart';

class SplashController extends GetxController {
  bool isUpdateAvailable = false;

  @override
  void onReady() async {
    Timer(const Duration(milliseconds: 900), () async{
      Get.offAll(() => Dashboard());
    });
    super.onReady();
  }
}