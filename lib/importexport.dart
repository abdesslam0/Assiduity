import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

// Reusable Header Widget
Widget buildHeader(String title) {
  return Container(
    padding: const EdgeInsets.all(20),
    margin: const EdgeInsets.symmetric(vertical: 20),
    alignment: Alignment.center,
    child: Text(
      title,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  );
}

// Reusable Elevated Button
Widget buildButton(String label, VoidCallback onPressed) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
    onPressed: onPressed,
    child: Text(label),
  );
}

// Import and Export Screen
class ImportExportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Import & Export'),
      ),
      body:Center(
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          buildButton('EXPORT', () => Navigator.push(context, MaterialPageRoute(builder: (_) => ExportScreen()))),
          const SizedBox(height: 20),
          buildButton('IMPORT', () => Navigator.push(context, MaterialPageRoute(builder: (_) => ImportScreen()))),
        ],
      ),
      )
    );
  }
}

// Import Screen
class ImportScreen extends StatefulWidget {
  @override
  _ImportScreenState createState() => _ImportScreenState();
}

class _ImportScreenState extends State<ImportScreen> {
  File? selectedFile;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() => selectedFile = File(result.files.single.path!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMPORT'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          buildHeader('IMPORT'),
          buildTextField('MODULE'),
          buildTextField('YEAR'),
          buildTextField('GROUP'),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: pickFile, child: const Text('Choose File')),
          if (selectedFile != null) Text('Selected File: ${selectedFile!.path}'),
          const SizedBox(height: 20),
          buildButton('IMPORT', () {})
        ],
      ),
    );
  }

  // Reusable Text Field
  Widget buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
      ),
    );
  }
}

// Export Screen
class ExportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Export'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          buildHeader('EXPORT'),
          Wrap(
            children: List.generate(
              3,
              (index) => GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Groupe ${index + 1}', style: const TextStyle(fontSize: 20)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ImportExportScreen()));
}
