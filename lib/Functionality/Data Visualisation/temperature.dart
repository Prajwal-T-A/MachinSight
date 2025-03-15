import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Downtime vs Temperature Analysis"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'lib/images/tempvsdt.png', // Path to the image
          fit: BoxFit.cover,     // Adjust image scaling
        ),
      ),
    );
  }
}
