import 'package:get/get.dart';

class KalkulatorController extends GetxController {

  var hasil = 0.0.obs;

  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasil.value = hasilTambah;
    Get.snackbar(
      "Hasil tambah ",
      "hasilnya ${hasilTambah}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
    Get.snackbar(
      "Hasil kurang ",
      "hasilnya ${hasilKurang}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasil.value = hasilKali;
    Get.snackbar(
      "Hasil kali ",
      "hasilnya ${hasilKali}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    double hasilBagi = angka1 / angka2;
    hasil.value = hasilBagi;
    Get.snackbar(
      "Hasil bagi ",
      "hasilnya ${hasilBagi}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}