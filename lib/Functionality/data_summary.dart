// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DataSummary extends StatelessWidget {
  const DataSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/1/2024",
        "Shift": "Morning",
        "Temperature (°C)": "67.4",
        "Vibration Level (mm/s)": "15.5",
        "Energy Usage (kWh)": "56.5",
        "Production Output (units)": "45",
        "Downtime (minutes)": "33",
        "Error Codes": "E03"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/5/2024",
        "Shift": "Evening",
        "Temperature (°C)": "60.6",
        "Vibration Level (mm/s)": "16.2",
        "Energy Usage (kWh)": "36.5",
        "Production Output (units)": "119",
        "Downtime (minutes)": "42",
        "Error Codes": "E00"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/10/2024",
        "Shift": "Evening",
        "Temperature (°C)": "81.5",
        "Vibration Level (mm/s)": "19.5",
        "Energy Usage (kWh)": "41.7",
        "Production Output (units)": "64",
        "Downtime (minutes)": "52",
        "Error Codes": "E01"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/12/2024",
        "Shift": "Night",
        "Temperature (°C)": "88.7",
        "Vibration Level (mm/s)": "15.7",
        "Energy Usage (kWh)": "42.9",
        "Production Output (units)": "147",
        "Downtime (minutes)": "44",
        "Error Codes": "E02"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/17/2024",
        "Shift": "Morning",
        "Temperature (°C)": "75.7",
        "Vibration Level (mm/s)": "22.3",
        "Energy Usage (kWh)": "33.3",
        "Production Output (units)": "149",
        "Downtime (minutes)": "54",
        "Error Codes": "E02"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/19/2024",
        "Shift": "Night",
        "Temperature (°C)": "69.4",
        "Vibration Level (mm/s)": "13.9",
        "Energy Usage (kWh)": "50.7",
        "Production Output (units)": "50",
        "Downtime (minutes)": "33",
        "Error Codes": "E01"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/19/2024",
        "Shift": "Night",
        "Temperature (°C)": "86.5",
        "Vibration Level (mm/s)": "17.7",
        "Energy Usage (kWh)": "51.5",
        "Production Output (units)": "28",
        "Downtime (minutes)": "12",
        "Error Codes": "E00"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/20/2024",
        "Shift": "Morning",
        "Temperature (°C)": "77.4",
        "Vibration Level (mm/s)": "22.4",
        "Energy Usage (kWh)": "56.1",
        "Production Output (units)": "134",
        "Downtime (minutes)": "19",
        "Error Codes": "E02"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/22/2024",
        "Shift": "Evening",
        "Temperature (°C)": "72.3",
        "Vibration Level (mm/s)": "12",
        "Energy Usage (kWh)": "30.7",
        "Production Output (units)": "84",
        "Downtime (minutes)": "36",
        "Error Codes": "E01"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "9/23/2024",
        "Shift": "Morning",
        "Temperature (°C)": "73.8",
        "Vibration Level (mm/s)": "17.2",
        "Energy Usage (kWh)": "56.1",
        "Production Output (units)": "155",
        "Downtime (minutes)": "23",
        "Error Codes": "E02"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/2/2024",
        "Shift": "Evening",
        "Temperature (°C)": "70",
        "Vibration Level (mm/s)": "17",
        "Energy Usage (kWh)": "40.7",
        "Production Output (units)": "30",
        "Downtime (minutes)": "26",
        "Error Codes": "E00"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/6/2024",
        "Shift": "Night",
        "Temperature (°C)": "61",
        "Vibration Level (mm/s)": "20.3",
        "Energy Usage (kWh)": "34.5",
        "Production Output (units)": "89",
        "Downtime (minutes)": "49",
        "Error Codes": "E01"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/7/2024",
        "Shift": "Morning",
        "Temperature (°C)": "81.5",
        "Vibration Level (mm/s)": "18.4",
        "Energy Usage (kWh)": "54.6",
        "Production Output (units)": "35",
        "Downtime (minutes)": "8",
        "Error Codes": "E03"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/14/2024",
        "Shift": "Night",
        "Temperature (°C)": "64.6",
        "Vibration Level (mm/s)": "20.9",
        "Energy Usage (kWh)": "48.3",
        "Production Output (units)": "34",
        "Downtime (minutes)": "42",
        "Error Codes": "E00"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/17/2024",
        "Shift": "Evening",
        "Temperature (°C)": "69.3",
        "Vibration Level (mm/s)": "23.3",
        "Energy Usage (kWh)": "37.3",
        "Production Output (units)": "192",
        "Downtime (minutes)": "50",
        "Error Codes": "E00"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/18/2024",
        "Shift": "Night",
        "Temperature (°C)": "86.9",
        "Vibration Level (mm/s)": "17.9",
        "Energy Usage (kWh)": "57.5",
        "Production Output (units)": "14",
        "Downtime (minutes)": "25",
        "Error Codes": "E02"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/23/2024",
        "Shift": "Morning",
        "Temperature (°C)": "73.3",
        "Vibration Level (mm/s)": "19",
        "Energy Usage (kWh)": "36",
        "Production Output (units)": "56",
        "Downtime (minutes)": "35",
        "Error Codes": "E00"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/23/2024",
        "Shift": "Morning",
        "Temperature (°C)": "80.5",
        "Vibration Level (mm/s)": "14.5",
        "Energy Usage (kWh)": "47.4",
        "Production Output (units)": "185",
        "Downtime (minutes)": "4",
        "Error Codes": "E02"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/24/2024",
        "Shift": "Night",
        "Temperature (°C)": "73.1",
        "Vibration Level (mm/s)": "18.1",
        "Energy Usage (kWh)": "31.1",
        "Production Output (units)": "145",
        "Downtime (minutes)": "53",
        "Error Codes": "E01"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/25/2024",
        "Shift": "Morning",
        "Temperature (°C)": "61.7",
        "Vibration Level (mm/s)": "24.6",
        "Energy Usage (kWh)": "53.2",
        "Production Output (units)": "166",
        "Downtime (minutes)": "19",
        "Error Codes": "E03"
      },
      {
        "Machine ID": "M001",
        "Machine Type": "Dyeing Machine",
        "Date": "10/29/2024",
        "Shift": "Evening",
        "Temperature (°C)": "66.1",
        "Vibration Level (mm/s)": "23.5",
        "Energy Usage (kWh)": "51.5",
        "Production Output (units)": "123",
        "Downtime (minutes)": "53",
        "Error Codes": "E00"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Data Summary"),
        backgroundColor: const Color.fromARGB(255, 42, 157, 143),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: data[0]
              .keys
              .map((key) => DataColumn(
                  label: Text(key, style: TextStyle(color: Colors.white))))
              .toList(),
          rows: data
              .map((row) => DataRow(
                  cells: row.values
                      .map((value) => DataCell(
                          Text(value, style: TextStyle(color: Colors.white))))
                      .toList()))
              .toList(),
        ),
      ),
    );
  }
}
