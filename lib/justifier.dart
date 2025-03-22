import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class JustifyScreen extends StatefulWidget {
  @override
  _JustifyScreenState createState() => _JustifyScreenState();
}

class _JustifyScreenState extends State<JustifyScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Justify Attendance'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Scan Your Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),
            const Text('Or', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 15),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scan QR Code',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(width: 10),
                Icon(Icons.qr_code, size: 34),
              ],
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () async {
                // Open Camera logic
              },
              child: const Text(
                'Open Camera',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),

            const SizedBox(height: 30),

            const Text('Or', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Student Name',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Justifier()),
                    );
                  },
                  child: Text('Justify'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Justifier extends StatefulWidget {
  @override
  _JustifierState createState() => _JustifierState();
}

class _JustifierState extends State<Justifier> {
  DateTime? _selectedDate;

  // Function to show the Date Picker
  Future<void> _pickDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Justify Absence'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 100, 40, 60),
            child: Center(
              child: Column(
                children: [
                  const Text("Student Name:", style: TextStyle(fontSize: 24)),
                  const SizedBox(height: 10),
                  const Text('Mohamed OUDHA', style: TextStyle(fontSize: 24)),
                  const SizedBox(height: 60),

                  // Display selected date
                Row(
                  children: [
                     Text(
  _selectedDate == null
      ? 'No date selected'
      : _selectedDate!.toLocal().toString().split(' ')[0],
  style: const TextStyle(fontSize: 18),
),

                  const SizedBox(width: 20),

                  // Date Picker Button
                  ElevatedButton(
                    onPressed: () => _pickDate(context),
                    child: const Text('Pick a Date'),
                  ),
                  ],
                ),

                  const SizedBox(height: 60),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter Absent Cause',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30),

                  // File Picker Button
                  ElevatedButton(
                    onPressed: () async {
                      FilePickerResult? result = await FilePicker.platform.pickFiles();
                      if (result != null) {
                        File file = File(result.files.single.path!);
                        print('File selected: ${file.path}');
                      }
                    },
                    child: const Text("Choose File (Optional)"),
                  ),
                  const SizedBox(height: 20),

                  // Justify Button
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Justification Submitted')),
                      );
                    },
                    child: const Text('Justify'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}