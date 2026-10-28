import 'package:flutter/material.dart';
import 'package:flutterujicoba/controller/detailmakanan_controller.dart';
import 'package:get/get.dart';
import 'package:flutterujicoba/models/makanan_model.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Game"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: SizedBox(
                    height: 180,
                    child: Image.network(
                      controller.gambarMakanan,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  controller.namaMakanan,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    Icon(Icons.star, color: Colors.amber, size: 20),
                    SizedBox(width: 5),
                    Text(
                      controller.ratingMakanan.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                Text(
                  "Harga",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),

                Text(
                  "Rp. " + controller.hargaMakanan,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Deskripsi Makanan",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  controller.deskripsiMakanan,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}