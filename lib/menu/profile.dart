import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pann12ptr"),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.person_add), onPressed: () {}),
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),

          const CircleAvatar(
            radius: 40,
            child: Icon(Icons.person, size: 50),
          ),
          const SizedBox(height: 10),
      
          const Text(
            "@pann12ptr",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("  50 Mengikuti   |   "),
              Text("203 Pengikut   |   "),
              Text("206 Suka  "),
            ],
          ),
          const SizedBox(height: 15),

          // Tombol Edit
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: () {}, child: const Text("Edit profil")),
              const SizedBox(width: 10),
              OutlinedButton(onPressed: () {}, child: const Text("Tambah bio")),
            ],
          ),
          const SizedBox(height: 20),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.grid_on, size: 28),
              Icon(Icons.lock_outline, size: 28, color: Colors.grey),
              Icon(Icons.repeat, size: 28, color: Colors.grey),
              Icon(Icons.bookmark_border, size: 28, color: Colors.grey),
              Icon(Icons.favorite_border, size: 28, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}