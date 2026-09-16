import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: TikTokPage()));

class TikTokPage extends StatelessWidget {
  const TikTokPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.help_outline, color: Colors.white),
        actions: const [Icon(Icons.close, color: Colors.white), SizedBox(width: 16)],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Masuk ke TikTok',
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              _buildAuthButton(
                icon: const Icon(Icons.person_outline, color: Colors.white),
                text: 'Gunakan nomor telepon/email/nama',
              ),
              _buildAuthButton(
                icon: const Icon(Icons.facebook, color: Colors.blue),
                text: 'Lanjutkan dengan Facebook',
              ),
              _buildAuthButton(
                icon: const Text('G', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
                text: 'Lanjutkan dengan Google',
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('atau', style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 16),
              _buildAuthButton(
                icon: const SizedBox.shrink(),
                text: 'Pilih akun untuk masuk',
              ),
              const Spacer(),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                  children: [
                    TextSpan(text: 'Dengan menggunakan akun yang berlokasi di '),
                    TextSpan(text: 'Indonesia', style: TextStyle(color: Colors.blue)),
                    TextSpan(text: ', Anda menyetujui '),
                    TextSpan(text: 'Ketentuan Layanan', style: TextStyle(color: Colors.blue)),
                    TextSpan(text: ' kami dan menyatakan bahwa Anda telah membaca '),
                    TextSpan(text: 'Kebijakan Privasi', style: TextStyle(color: Colors.blue)),
                    TextSpan(text: ' kami.'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: const Color(0xFF1E1E1E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Belum memiliki akun? ', style: TextStyle(color: Colors.white)),
            GestureDetector(
              onTap: () {},
              child: const Text('Mendaftar', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildAuthButton({required Widget icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF2C2C2E),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            SizedBox(width: 24, height: 24, child: Center(child: icon)),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 40), // Untuk menyeimbangkan posisi teks di tengah
          ],
        ),
      ),
    );
  }
}