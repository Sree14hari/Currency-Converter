import 'package:flutter/material.dart';

class ConvertButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ConvertButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        fixedSize: WidgetStatePropertyAll(const Size(200, 50)),
        backgroundColor: WidgetStatePropertyAll(Colors.blueGrey.shade900),
      ),
      child: const Text("CONVERT", style: TextStyle(color: Colors.white)),
    );
  }
}
