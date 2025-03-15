import 'package:flutter/material.dart';

class SettingsProfile extends StatelessWidget {
  const SettingsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings and Profile"),
        backgroundColor: const Color.fromARGB(255, 236, 140, 116),
      ),
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
    );
  }
}
