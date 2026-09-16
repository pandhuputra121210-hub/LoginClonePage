import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget icon;
  final String text;

  const CustomButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
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
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 40),
          ],
        ),
      ),
    );
  }
}