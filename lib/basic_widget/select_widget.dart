import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select Widged",
          style: TextStyle(
            fontWeight: FontWeight.bold, 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 199, 34, 191),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Maulana Virgiansyah',
          ),
        ),
      ),
    );
  }
}

