import 'package:flutter/material.dart';

class Energy extends StatelessWidget {
  const Energy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Downtime vs Energy Usage Analysis"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'lib/images/energyvsdt.png', // Path to the image
          fit: BoxFit.cover,     // Adjust image scaling
        ),
      ),
    );
  }
}
