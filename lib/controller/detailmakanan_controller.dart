import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String deskripsiMakanan;
  late String gambarMakanan;
  late String hargaMakanan;
  late double ratingMakanan;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    deskripsiMakanan = arguments['deskripsiMakanan'];
    gambarMakanan = arguments['gambarMakanan'];
    hargaMakanan = arguments['hargaMakanan'];
    ratingMakanan = arguments['ratingMakanan'];
  }
}