import 'package:flutter/material.dart';

class StatelessScreen extends StatelessWidget {
  const StatelessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FWFlutter")),
      body: const Material(
        color: Colors.blue,
        child: Center(
          child: Text(
            "udu",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 20,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}