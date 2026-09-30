import 'package:flutter/material.dart';
import 'package:flutterujicoba/components/custom_dropdown.dart';
import 'package:get/get.dart';
import 'package:flutterujicoba/routes.dart';
import 'package:flutterujicoba/components/custom_textfield.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtnowa = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Registration Page')),
      body: Column(
        children: [
          EditingTextfield(txtcontroller: txtNama, myhint: 'input name'),
          CustomDropdown(controller: txtJenisKelamin, myHint: 'input kelamin'),
          EditingTextfield(txtcontroller: txtEmail, myhint: 'input email'),
          EditingTextfield(txtcontroller: txtAlamat, myhint: 'input alamat'),
          EditingTextfield(txtcontroller: txtnowa, myhint: 'input no'),
          ElevatedButton(
            onPressed: () {
              
              Get.toNamed(Routes.confrimregistartion_page,
              arguments: {
                'name': txtNama.text.toString(),
                'email': txtEmail.text.toString(),
                'alamat': txtAlamat.text.toString(),
                'nowa': txtnowa.text.toString(),
                'jeniskelamin': txtJenisKelamin.text.toString(),
              });
            },
            child: Text("Send"),
          ),
        ]
      )
    );
  }
}