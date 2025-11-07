import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login_page/view/splash.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {     /* does not store internal state */
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(
        
      ),
    );
  }
}


