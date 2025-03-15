// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TipsTutorials extends StatelessWidget {
  const TipsTutorials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tips and Tutorials"),
          backgroundColor: const Color.fromARGB(255, 231, 111, 81),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 32, 32),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "App Information : \n\n",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "MACHINSIGHT - Empowering your Machine with Intelligence\n\n"
                    "Industries faces a lot of issues with respect to machine downtimes and data visualisations.\n\n"
                    "Hence, Industry professionals require a user-friendly mobile solution for real-time machine"
                    "insights to enhance predictive maintenance and operational efficiency.\n\n"
                    "This app tries to tackle this problem in a simple and user-friendly manner.\n\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              TextSpan(
                text: "Navigation : \n\n",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "There are different features available on the homepage which are visible as a dashboard.\n\n"
                    "A single click on each of them will naviagte you to that page.\n\n"
                    "Familiarize yourself with the interface : Pay attention to icons, menus, and how information is presented.\n\n"
                    "The more you use the app, the more comfortable you'll become with its navigation.\n\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              TextSpan(
                text: "Function of Data Visualisation : \n\n",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "What it is : Data visualization transforms raw data into charts and graphs, making it easier to understand patterns and trends.\n\n"
                    "Visuals effectively convey insights to audiences of all levels, improving understanding and engagement. \n\n"
                    "The user can visualise data based on different input parameters such as : \n\n"
                    " 1. Temperature\n"
                    " 2. Energy Usage\n"
                    " 3. Vibration Levels\n"
                    " 4. Production Outputs\n\n\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              TextSpan(
                text: "Function of AI Prediction : \n\n",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "This feature provides an AI Based Downtime Prediction\n\n"
                    "The downtime prediction is made using the parameters : \n\n"
                    " 1. Temperature \n"
                    " 2. Vibration Levels\n"
                    " 3. Energy Usage\n\n\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              TextSpan(
                text: "Notification History : \n\n",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "Gives the user access to previous notifications inorder to analyse data easily.\n\n"
                    "Key features:\n\n"
                    " 1. Stores upto past 10 notifications.\n"
                    " 2. Machine Focused Notifications\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ]),
          ),
        )));
  }
}
