import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final TextEditingController controller;
  final String myHint;

  const CustomDropdown({
    super.key,
    required this.controller,
    required this.myHint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: DropdownMenu(
        width: MediaQuery.of(context).size.width -40,
        controller: controller,
        hintText: myHint,
        dropdownMenuEntries: const [
          DropdownMenuEntry(value: 'Laki-laki', label: 'Laki-laki'),
          DropdownMenuEntry(value: 'Perempuan', label: 'Perempuan'),
        ],
      ),
    );
}
}