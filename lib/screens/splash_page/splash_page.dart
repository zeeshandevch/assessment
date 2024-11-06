import 'package:flutter/material.dart';
import '../../config.dart';

class SplashPage extends StatelessWidget {
  final splashCtrl = Get.put(SplashController());
  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (_) {
      return Scaffold(
        backgroundColor: ColorHelper.bg,
        body: Center(
          child: Text(
            "Assessment",
            style: AppCss.poppinsH1,
          ),
        ),
      );
    });
  }
}
