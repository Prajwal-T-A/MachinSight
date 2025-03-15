import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Overallpred extends StatefulWidget {
  const Overallpred({super.key});

  @override
  _OverallpredState createState() => _OverallpredState();
}

class _OverallpredState extends State<Overallpred> {
  final _formKey = GlobalKey<FormState>();
  final _temperatureController = TextEditingController();
  final _vibrationController = TextEditingController();
  final _energyController = TextEditingController();
  String _selectedOutputFeature = 'Downtime (minutes)';
  String? _prediction;

  Future<void> _predict() async {
    final url = Uri.parse(
        'http://127.0.0.1:5000/predict'); // Replace with your backend URL
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'output_feature': _selectedOutputFeature,
          'data_entries': 100, // Default value; you can make this dynamic
          'temperature': double.parse(_temperatureController.text),
          'vibration': double.parse(_vibrationController.text),
          'energy': double.parse(_energyController.text),
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _prediction =
              'Predicted value of $_selectedOutputFeature: ${data['prediction']}';
        });
      } else {
        setState(() {
          _prediction = 'Error: ${response.body}';
        });
      }
    } catch (e) {
      setState(() {
        _prediction = 'Failed to connect to server';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overall Prediction"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                value: _selectedOutputFeature,
                decoration: InputDecoration(
                  labelText: 'Select Output Feature',
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
              TextFormField(
                controller: _temperatureController,
                decoration: const InputDecoration(
                  labelText: 'Temperature (°C)',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a temperature value';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _vibrationController,
                decoration: const InputDecoration(
                  labelText: 'Vibration Level (mm/s)',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a vibration level';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _energyController,
                decoration: const InputDecoration(
                  labelText: 'Energy Usage (kWh)',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an energy usage value';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _predict();
                  }
                },
                child: const Text('Predict'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 42, 157, 143),
                ),
              ),
              const SizedBox(height: 16),
              if (_prediction != null)
                Text(
                  _prediction!,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
