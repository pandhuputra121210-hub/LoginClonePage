import 'package:flutterujicoba/pages/confrimregistartion_page.dart';
import 'package:flutterujicoba/pages/list_makanan_page.dart';
import 'package:flutterujicoba/pages/registrantion_page.dart';
import 'package:get/get.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confrimregistartion_page = "/confirm_registration";
  static const String list_makanan = "/list_makanan";
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confrimregistartion_page, page: () => ConfrimregistartionPage()),
    GetPage(name: list_makanan, page: () => ListmakananPage()),
  ];
}