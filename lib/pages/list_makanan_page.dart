import 'package:flutter/material.dart';
import 'package:flutterujicoba/controller/list_makanan_controller.dart';
import 'package:flutterujicoba/pages/detail.makanan_page.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class ListmakananPage extends StatelessWidget {
  ListmakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("List Makanan"),), 
    body: Container(
      margin: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: controller.listMakanan.length,
        itemBuilder: (context, index){
          final makanan = controller.listMakanan[index];
          
          return InkWell(
            onTap: (){
             Get.to(
          () => DetailMakananPage(
            makanan: makanan,
          ),
        );

            },

            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      makanan.namaMakanan,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Rp. " + makanan.hargaMakanan,
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),
      ),
    );
  }
}