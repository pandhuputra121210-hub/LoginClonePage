import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '0',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('+')),
                ElevatedButton(onPressed: () {}, child: const Text('-')),
                ElevatedButton(onPressed: () {}, child: const Text('*')),
                ElevatedButton(onPressed: () {}, child: const Text('/')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}