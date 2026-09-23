import 'package:flutter/material.dart';
import 'package:flutterujicoba/components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
    TextEditingController txtPassword = TextEditingController();
    String statusLogin = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("Login page")),
        body: Column(
          children: [
            Text(
              "Welcome to Application",
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 21, 6, 232),
                fontStyle: FontStyle.italic,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: EditingTextfield(
                txtcontroller: txtUsername,
                myhint: "input username",
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: EditingTextfield(
                txtcontroller: txtPassword,
                myhint: "input password",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ElevatedButton(
                  onPressed: () {
                    setState(() {
                      
                    String username = txtUsername.text.toString();
                    String password = txtPassword.text.toString();
                    if (username == "admin" && password == "admin") {
                      print("sukses login");
                      statusLogin = "admin";
                    } else {
                      print("gagal login");
                      statusLogin = "gagal";                   
                     }
                    });
                  }, 
                  child: Text("Login")),
                  ElevatedButton(onPressed: () {}, child: Text("Register")),
              ],
            ),
          ],
        ),
    );
  }
}