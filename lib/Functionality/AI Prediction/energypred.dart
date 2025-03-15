import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Energypred extends StatefulWidget {
  const Energypred({super.key});

  @override
  _EnergyPredictionState createState() => _EnergyPredictionState();
}

class _EnergyPredictionState extends State<Energypred> {
  final TextEditingController _inputValueController = TextEditingController();
  String _selectedOutputFeature = 'Downtime (minutes)';
  String _predictionResult = '';

  Future<void> _predict() async {
    final String outputFeature = _selectedOutputFeature;
    final String inputValue = _inputValueController.text;

    if (inputValue.isEmpty) {
      setState(() {
        _predictionResult = 'Please enter all fields';
      });
      return;
    }

    final url = Uri.parse('http://127.0.0.1:5000/predict');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'output_feature': outputFeature,
          'input_value': inputValue,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          double predictedValue =
              double.parse(data['predicted_value'].toString());
          _predictionResult =
              'Predicted Value of $outputFeature: ${predictedValue.toStringAsFixed(2)}';
        });
      } else {
        setState(() {
          _predictionResult = 'Error: ${response.body}';
        });
      }
    } catch (e) {
      setState(() {
        _predictionResult = 'Failed to connect to server';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prediction based on Energy Usage"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedOutputFeature,
              decoration: InputDecoration(
                labelText: 'Select output feature',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
              dropdownColor: Colors.black,
              items: [
                DropdownMenuItem(
                  value: 'Downtime (minutes)',
                  child: Text('Downtime (minutes)',
                      style: TextStyle(color: Colors.white)),
                ),
                DropdownMenuItem(
                  value: 'Production Output (units)',
                  child: Text('Production Output (units)',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedOutputFeature = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _inputValueController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Energy Usage (kWh)',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _predict,
              child: const Text("Predict"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 42, 157, 143),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              _predictionResult,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
