import 'package:auth_provider_app/module/splash/View/splash_screen.dart';
import 'package:auth_provider_app/screens/homepage.dart';
import 'package:auth_provider_app/screens/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'module/PhoneLogin/View/phone_login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneLoginScreen(),
    );
  }
}
