import 'package:flutter/material.dart';
import 'package:flutterujicoba/menu/history.dart';
import 'package:flutterujicoba/menu/home.dart';
import 'package:flutterujicoba/menu/profile.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];
}