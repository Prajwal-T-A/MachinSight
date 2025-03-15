import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Errorpred extends StatefulWidget {
  const Errorpred({super.key});

  @override
  _ErrorpredState createState() => _ErrorpredState();
}

class _ErrorpredState extends State<Errorpred> {
  final _formKey = GlobalKey<FormState>();
  final _outputFeatureController = TextEditingController();
  final _valueController = TextEditingController();
  String? _prediction;

  Future<void> _predictError() async {
    final url = Uri.parse(
        'http://127.0.0.1:5000/predict_error'); // Use the appropriate backend URL
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'output_feature': _outputFeatureController.text,
        'data_entries': 20, // Default value for data entries
        'input_value': double.parse(_valueController.text),
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _prediction = data['error_code_prediction'].toString();
      });
    } else {
      setState(() {
        _prediction = 'Error: Could not fetch prediction';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Code Prediction"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _outputFeatureController,
                decoration: const InputDecoration(
                  labelText: 'Output Feature',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the output feature';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _valueController,
                decoration: const InputDecoration(
                  labelText: 'Value of Output Feature',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the value of the output feature';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _predictError();
                  }
                },
                child: const Text('Predict Error Code'),
              ),
              const SizedBox(height: 16),
              if (_prediction != null)
                Text(
                  'Predicted Error Code : $_prediction',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
