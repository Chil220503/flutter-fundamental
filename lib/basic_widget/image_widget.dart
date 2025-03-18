import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image Widget",
          style: TextStyle(
            fontWeight: FontWeight.bold, // Membuat teks tebal
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 197, 16, 200),
      ),
      body: const Center(
        child: Image(
          image: AssetImage("assets/cemara.png"),
          fit: BoxFit.contain, // Mengatur gambar agar tetap proporsional
        ),
      ),
    );
  }
}
