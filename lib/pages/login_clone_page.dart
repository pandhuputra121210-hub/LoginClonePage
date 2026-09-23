import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void login() {
      bool isSuccess = emailController.text == "admin" && passwordController.text == "admin";
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(isSuccess ? "Login berhasil" : "Login gagal"),
          backgroundColor: isSuccess ? Colors.green : Colors.red,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text("TikTok For Business", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            const Text("Log in", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Text("Don't have an account yet? Sign up now"),
            const SizedBox(height: 25),
            
            const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            EditingTextfield(txtcontroller: emailController, myhint: "Enter your email"),
            const SizedBox(height: 15),

            const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            EditingTextfield(txtcontroller: passwordController, myhint: "Enter your password"),
            const SizedBox(height: 20),

            GestureDetector( 
              onTap: login,
              child: CustomButton(icon: Container(), text: "Log in"),
            ), 
            const SizedBox(height: 20),

            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Text("Or")),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 20),

            const CustomButton(
              icon: Icon(Icons.music_note, color: Colors.white),
              text: "Log in with TikTok",
            ),
          ],
        ),
      ),
    );
  }
}