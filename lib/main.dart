import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyCMXZx4OFN_lw9xGfF-hPeYxPB_ri7dGs4',
              appId: '1:353335023996:android:34c136d9ffdcae1c5b6cf9',
              messagingSenderId: '353335023996',
              projectId: 'royal-assessment'))
      : await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await dotenv.load(fileName: ".env");
  await Hive.initFlutter();

  /// Cache Adapter register
  Hive.registerAdapter(CacheModelAdapter());

  /// Product Adapter register
  Hive.registerAdapter(ProductModelAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Assessment app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff37B6E9)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: SplashPage(),
    );
  }
}
