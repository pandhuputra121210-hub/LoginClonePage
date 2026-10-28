import 'package:flutterujicoba/pages/confrimregistartion_page.dart';
import 'package:flutterujicoba/pages/detail.makanan_page.dart';
import 'package:flutterujicoba/pages/list_makanan_page.dart';
import 'package:flutterujicoba/pages/registrantion_page.dart';
import 'package:flutterujicoba/pages/main_menu_page.dart';
import 'package:flutterujicoba/pages/menu_drawer.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confrimregistartion_page = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu";
  static const String menuDrawer = "/menu_drawer";
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confrimregistartion_page, page: () => ConfrimregistartionPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu, page: () => MainMenuPage()),
    GetPage(name: menuDrawer, page: () => const MenuDrawer()),
  ];
}