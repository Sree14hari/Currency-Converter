import 'package:flutter/material.dart';

class CurrencyTextField extends StatelessWidget {
  final TextEditingController controller;
  const CurrencyTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.blueGrey.shade900),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.blueGrey.shade900),
          ),
          labelText: "Enter amount in USD",
          labelStyle: TextStyle(
            color: Colors.blueGrey.shade900,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: const Icon(Icons.attach_money),
          // hoverColor: Colors.blueGrey.shade900,
          // focusColor: Colors.blueGrey.shade900,
          // fillColor: Colors.blueGrey.shade100,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
