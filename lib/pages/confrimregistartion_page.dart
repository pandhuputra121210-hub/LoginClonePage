import 'package:flutter/material.dart';
import 'package:flutterujicoba/components/custom_textfield.dart';
import 'package:flutterujicoba/controller/Confrim_controller.dart';
import 'package:get/get.dart';
import 'package:flutterujicoba/routes.dart';

class ConfrimregistartionPage extends StatelessWidget {
  ConfrimregistartionPage({super.key});

  final controller = Get.put(ConfrimController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama ${controller.nama}",
            style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 22, 22, 23)),
          ),
          Text(
            "Email ${controller.email}",
            style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 14, 14, 15)),
          ),
          Text(
            "Alamat ${controller.alamat}",  
            style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 16, 17, 17)),
          ),
          Text(
            "nowa ${controller.nowa}",
            style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 18, 18, 19)),
          ),

          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Oke"),
          ),
        ],
      ),
    );
  }
}