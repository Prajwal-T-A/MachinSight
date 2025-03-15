import 'package:flutter/material.dart';

class Vibration extends StatelessWidget {
  const Vibration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Downtime vs Vibration Analysis"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'lib/images/vibrationvsdt.png', // Path to the image
          fit: BoxFit.cover, // Adjust image scaling
        ),
      ),
    );
  }
}
