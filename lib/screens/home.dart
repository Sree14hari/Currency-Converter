import 'package:currency_converter/screens/home.dart' as textEditingController;
import 'package:currency_converter/widgets/Updating_field.dart';
import 'package:currency_converter/widgets/convert_button.dart';
import 'package:currency_converter/widgets/currency_text_field.dart';
import 'package:flutter/material.dart';

//*1.CREATE A VARIABLE TO STORE THE RESULT
//*2. MULTIPLY RESULT WITH STANDARD VALUE
//*3. UPDATE THE RESULT IN THE TEXT FIELD

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

void dispose() {
  // Dispose of the text editing controller when the widget is removed from the widget tree
  textEditingController.dispose();
}

class _HomePageState extends State<HomePage> {
  double result = 0.0; // Variable to store the conversion result
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "CURRENCY CONVERTER",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //*DATA FIELD*
              CurrencyTextField(controller: textEditingController),
              //*OUTPUT DATA TEXT*
              UpdateField(
                result: result.toStringAsFixed(3),
              ), // Display the result
              //*CONVERT BUTTON*
              ConvertButton(
                onPressed: () {
                  if (textEditingController.text.isEmpty) {
                    // Show an error if the text field is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter a value to convert"),
                      ),
                    );
                    return;
                  }
                  setState(() {
                    result = double.parse(textEditingController.text) * 85.56;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
