import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingCupertinoWidget extends StatelessWidget {
  const LoadingCupertinoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loading Button", 
      style: TextStyle(
            fontWeight: FontWeight.bold, 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 199, 34, 191),
        ),
      
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 4, 249, 25),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                
                child: const Text("Button BOM"),
                onPressed: () {},
              ),
              const SizedBox(height: 10),
              const CupertinoActivityIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}