// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/downtimepred.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/energypred.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/errorpred.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/overallpred.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/prodpred.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/temppred.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/vibrationpred.dart';

class AiPrediction extends StatelessWidget {
  const AiPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI Based Prediction"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Predict  :",
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 24, // Increased font size
                fontWeight: FontWeight.bold, // Bold font
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Downtimepred(),
                  ),
                );
              },

              //Temperature Visualisation
              child: Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 67, 109, 172),
                    //curve the corners
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 53),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "   Downtime",
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
                    builder: (context) => Errorpred(),
                  ),
                );
              },

              //Error Code Prediction
              child: Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 67, 109, 172),
                    //curve the corners
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 108, vertical: 53),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "     Error Codes",
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
                    builder: (context) => Prodpred(),
                  ),
                );
              },

              //Production Output Prediction
              child: Container(
                  height: 150,
                  width: 500,
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
        ],
      ),
    );
  }
}
