import 'package:flutter/material.dart';

class UpdateField extends StatefulWidget {
  final String result;

  const UpdateField({super.key, required this.result});

  @override
  State<UpdateField> createState() => _UpdateFieldState();
}

class _UpdateFieldState extends State<UpdateField> {
  // This should be updated with the actual result from the conversion logic
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        widget.result,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
          color: Colors.blueGrey.shade900,
        ),
      ),
    );
  }
}
