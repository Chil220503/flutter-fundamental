import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text Widget",
          style: TextStyle(
            fontWeight: FontWeight.bold, 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 199, 34, 191),
      ),
      body: const Center(
        child: SizedBox(
          width: 500, 
          child: Text(
            "Saya ,Maulana Virgiansyah sedang belajar Pemrograman Mobile",
            textAlign: TextAlign.center, 
            style: TextStyle(fontSize: 16), 
          ),
        ),
      ),
    );
  }
}
