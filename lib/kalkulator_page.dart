import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class  _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator Page"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Welcome to application",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 79, 1, 118),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Bungkus dengan Expanded agar lebarnya terikat (bounded) dan tidak stuck
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Number 1",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Number 2",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("+")),
              const SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: const Text("-")),
              const SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: const Text("×")),
              const SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: const Text("/")),
            ],
          )
        ],
      ),
    );
  }
}