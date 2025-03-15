// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machine_analysis/Functionality/AI%20Prediction/ai_prediction.dart';
import 'package:machine_analysis/Functionality/data_summary.dart';
import 'package:machine_analysis/Functionality/Data%20Visualisation/data_visualisation.dart';
import 'package:machine_analysis/Functionality/notification_history.dart';
import 'package:machine_analysis/Functionality/settings_profile.dart';
import 'package:machine_analysis/Functionality/tips_tutorials.dart';
import 'package:machine_analysis/intro_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 32, 32),
      appBar: AppBar(
        title: const Text("Predictive Machine Analysis"),
        backgroundColor: Colors.green,
        elevation: 0,
        //leading: const Icon(Icons.menu),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 122, 124, 122),
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'lib/images/appicon.png', // Path to your logo
                  fit: BoxFit.contain, // Ensures the image scales appropriately
                  height: 48, // Adjust height if needed
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IntroPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("A B O U T"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TipsTutorials()));
                },
              ),
            ],
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        //Row 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataVisualisation(),
                    ),
                  );
                },

                //First Feature
                child: Container(
                    height: 210,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 38, 70, 83),
                      //curve the corners
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 55),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Data     Visualisation",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),

            //Second Feature
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AiPrediction(),
                    ),
                  );
                },
                child: Container(
                    height: 210,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 42, 157, 143),
                      //curve the corners
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 55),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "AI Prediction",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ],
        ),

        //Row 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Third Feature
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataSummary(),
                    ),
                  );
                },
                child: Container(
                    height: 210,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 233, 196, 106),
                      //curve the corners
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 55),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Data Summary",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),

            //Fourth Feature
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationHistory(),
                    ),
                  );
                },
                child: Container(
                    height: 210,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 244, 162, 97),
                      //curve the corners
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 55),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Notification History",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ],
        ),

        //Third Row :
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TipsTutorials(),
                    ),
                  );
                },
                //FifthFeature
                child: Container(
                    height: 210,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 111, 81),
                      //curve the corners
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 55),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Tips and Tutorials",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),

            //Sixth Feature
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsProfile(),
                    ),
                  );
                },
                child: Container(
                    height: 210,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 140, 116),
                      //curve the corners
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 55),
                    // ignore: prefer_const_constructors

                    child: Text(
                      "Settings and Profile",
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ],
        ),
      ]),
    );
  }
}
