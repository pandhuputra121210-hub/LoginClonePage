import 'package:flutter/material.dart';
import 'package:flutterujicoba/controller/list_makanan_controller.dart';
import 'package:flutterujicoba/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Makanan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return Dismissible( 
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (direction) {
                  controller.listMakanan.removeAt(index);
                },
                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.detail_makanan,
                      arguments: {
                        'namaMakanan': makanan.namaMakanan,
                        'deskripsiMakanan': makanan.deskripsi,
                        'gambarMakanan': makanan.imageUrl,
                        'hargaMakanan': makanan.hargaMakanan,
                        'ratingMakanan': 5.0,
                      },
                    );
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),         
                      child: ListTile(
                        title: Text(
                          makanan.namaMakanan,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Rp. " + makanan.hargaMakanan,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}