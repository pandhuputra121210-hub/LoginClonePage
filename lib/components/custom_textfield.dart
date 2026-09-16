import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtContoller;
  final String hint;

  const CustomTextfield({super.key, required this.txtContoller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtContoller,

      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hint: Text(hint)
       ),
    );
  }
}