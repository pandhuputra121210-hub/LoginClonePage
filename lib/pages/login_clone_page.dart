import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller untuk mengambil teks input
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    // Fungsi untuk cek login
    void handleLogin() {
      String email = emailController.text;
      String password = passwordController.text;

      String message;
      Color color;

      // Cek apakah email & password benar
      if (email == 'admin' && password == 'admin') {
        message = 'Log in succes';
        color = Colors.green;
      } else {
        message = 'Log in gagal';
        color = Colors.red;
      }

      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: color,
          duration: const Duration(seconds: 2),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              
              Row(
                children: [
                  const Text(
                    'TikTok',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 4,
                    height: 4,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Text(
                    'For Business',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Judul Log in
              const Text(
                'Log in',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  const Text("Don't have an account yet? "),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sign up now',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // Input Email
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Use phone',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              CustomTextfield(
                txtContoller: emailController,
                hint: 'Enter your email address',
              ),

              const SizedBox(height: 16),

              // Input Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot password',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              CustomTextfield(
                txtContoller: passwordController,
                hint: 'Enter your password',
              ),

              const SizedBox(height: 20),

              // Tombol Log in
              GestureDetector(
                onTap: handleLogin,
                child: CustomButton(
                  icon: const SizedBox.shrink(),
                  text: 'Log in',
                ),
              ),

              const SizedBox(height: 12),

              // Pembatas "Or"
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Or', style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 12),

              // Tombol Log in dengan TikTok
              const CustomButton(
                icon: Icon(Icons.music_note, color: Colors.white, size: 20),
                text: 'Log in with TikTok',
              ),

              const SizedBox(height: 16),

              // Bantuan Login
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Having problems logging in with TikTok?',
                    style: TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}