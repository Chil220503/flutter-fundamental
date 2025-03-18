import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Floating Action Button",
          style: TextStyle(
            fontWeight: FontWeight.bold, // Membuat teks tebal
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 199, 34, 191),
      ),
      body: const Center(
        child: Text("Tekan tombol di bawah"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Menampilkan SnackBar saat FAB ditekan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Hello Guys!!! 👍"),
              duration: Duration(seconds: 5),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
