import 'package:flutterujicoba/models/makanan_model.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  RxList<MakananModel> listData = <MakananModel>[
    MakananModel(
      namaMakanan: "Tekken 7",
      hargaMakanan: "300.000",
      deskripsi: "Game fighting legendaris dengan pertarungan 1v1.",
      imageUrl: "https://images.unsplash.com/photo-1550745165-9bc0b252726f",
    ),
    MakananModel(
      namaMakanan: "Street Fighter 6",
      hargaMakanan: "500.000",
      deskripsi: "Game tarung modern dengan grafis keren.",
      imageUrl: "https://images.unsplash.com/photo-1542751371-adc38448a05e",
    ),
    MakananModel(
      namaMakanan: "Mortal Kombat 11",
      hargaMakanan: "450.000",
      deskripsi: "Game aksi pertarungan dengan animasi fataliti ikonik.",
      imageUrl: "https://images.unsplash.com/photo-1612287230202-1ff1d85d1bdf",
    ),
    MakananModel(
      namaMakanan: "Cyberpunk 2077",
      hargaMakanan: "600.000",
      deskripsi: "Game RPG open-world bertema masa depan.",
      imageUrl: "https://images.unsplash.com/photo-1542751110-97427bbecf20",
    ),
    MakananModel(
      namaMakanan: "Elden Ring",
      hargaMakanan: "700.000",
      deskripsi: "Game petualangan fantasi gelap yang menantang.",
      imageUrl: "https://images.unsplash.com/photo-1538481199705-c710c4e965fc",
    ),
  ].obs;
}