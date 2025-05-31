import 'package:currency_converter/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // theme:
  // ThemeData(useMaterial3: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Disable the debug banner
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
