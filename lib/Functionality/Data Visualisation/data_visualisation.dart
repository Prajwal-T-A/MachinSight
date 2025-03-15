import 'package:flutter/material.dart';
import 'package:machine_analysis/Functionality/Data%20Visualisation/energy.dart';
import 'package:machine_analysis/Functionality/Data%20Visualisation/production.dart';
import 'package:machine_analysis/Functionality/Data%20Visualisation/temperature.dart';
import 'package:machine_analysis/Functionality/Data%20Visualisation/vibration.dart';

class DataVisualisation extends StatelessWidget {
  const DataVisualisation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Visualisation"),
        backgroundColor: const Color.fromARGB(255, 47, 165, 173),
      ),
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),

          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Temperature(),
                  ),
                );
              },

              //Temperature Visualisation
              child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 67, 109, 172),
                    //curve the corners
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 53),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Temperature",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),

          const SizedBox(
            height: 40,
          ),

          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Energy(),
                  ),
                );
              },
              child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 67, 109, 172),
                    //curve the corners
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 73, vertical: 53),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Energy Usage Statistics",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),

          const SizedBox(
            height: 40,
          ),

          //
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Production(),
                  ),
                );
              },
              child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 67, 109, 172),
                    //curve the corners
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 53),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Production Output",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),

          const SizedBox(
            height: 40,
          ),

          //
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Vibration(),
                  ),
                );
              },
              child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 67, 109, 172),
                    //curve the corners
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 53),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Vibration Levels",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),
        ],
      ),
    );
  }
}
