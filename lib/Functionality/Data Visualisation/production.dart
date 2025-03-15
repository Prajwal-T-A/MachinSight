import 'package:flutter/material.dart';

class Production extends StatelessWidget {
  const Production({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Energy Usage vs Production Output"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'lib/images/energyvsprod.png', // Path to the image
          fit: BoxFit.cover, // Adjust image scaling
        ),
      ),
    );
  }
}
