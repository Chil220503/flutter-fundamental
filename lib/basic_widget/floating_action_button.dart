import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("")),
      body: const Center(
        child: Text("Tekan tombol di bawah"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Menampilkan SnackBar saat FAB ditekan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Tombol FAB ditekan! 👍"),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
