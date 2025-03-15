import 'package:flutter/material.dart';

class NotificationHistory extends StatelessWidget {
  const NotificationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification History"),
        backgroundColor: const Color.fromARGB(255, 244, 162, 97),
      ),
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
    );
  }
}