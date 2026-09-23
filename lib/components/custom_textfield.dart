import 'package:flutter/material.dart';

class EditingTextfield extends StatelessWidget {
  final TextEditingController txtcontroller;
  final String myhint;
  final bool isPassword;

  const EditingTextfield({
    super.key,
    required this.txtcontroller,
    required this.myhint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      obscureText: isPassword,
      style: const TextStyle(color: Colors.black87), // Agar teks yang diketik terlihat
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: myhint,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}