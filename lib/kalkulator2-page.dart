import 'package:flutter/material.dart';
import 'package:flutterujicoba/components/custom_textfield.dart';
import 'package:flutterujicoba/controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class Kalkulator2Page extends StatelessWidget {
  Kalkulator2Page({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Welcome to Kalkulator ",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Column(
        children: [
          EditingTextfield(txtcontroller: txtAngka1, myhint: "input angka 1"),
          EditingTextfield(txtcontroller: txtAngka2, myhint: "input angka 2"),
          
          // Tombol-tombol dibuat horizontal dengan Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  // panggil method tambah di controller
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.tambah(angka1, angka2);
                },
                child: Text("+"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.kurang(angka1, angka2);
                },
                child: Text("-"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.kali(angka1, angka2);
                },
                child: Text("*"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  double angka1 = double.parse(txtAngka1.text);
                  double angka2 = double.parse(txtAngka2.text);
                  controller.bagi(angka1, angka2);
                },
                child: Text("/"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  txtAngka1.clear();
                  txtAngka2.clear();
                  controller.hasil.value = 0;
                },
                child: Text("Reset"),
              ),
            ],
          ),

          // Obx tetap ada untuk memantau perubahan hasil secara otomatis
          Obx(
            () => Text(
              controller.hasil.toString(),
              style: TextStyle(color: const Color.fromARGB(255, 102, 3, 151), fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}