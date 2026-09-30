import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfrimController extends GetxController {
  late String nama;
  late String email;
  late String alamat;
  late String nowa;
  late String jeniskelamin;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    email = arguments['email'];
    alamat = arguments['alamat'];
    nowa = arguments['nowa'];
    jeniskelamin = arguments['jeniskelamin'];
  }
}