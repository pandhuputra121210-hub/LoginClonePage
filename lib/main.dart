import 'package:flutter/material.dart';
import 'package:flutterujicoba/kalkulator_page.dart';
import 'package:flutterujicoba/login_page.dart';
import 'package:flutterujicoba/pages/login_clone_page.dart';
import 'package:flutterujicoba/routes.dart';
import 'package:flutterujicoba/tiktok_page.dart';
import 'package:flutterujicoba/kalkulator2-page.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Learning App',
      initialRoute: Routes.list_makanan,
      getPages: Routes.myPages,
    );
  }
}
