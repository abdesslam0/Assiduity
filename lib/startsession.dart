import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';


class StartSessionScreen extends StatefulWidget {
  @override
  _StartSessionScreenState createState() => _StartSessionScreenState();
}

class _StartSessionScreenState extends State<StartSessionScreen> {
  String? selectedCourse;
  String? selectedGroup;
  String? selectedRoom;

  List<String> courses = ["Math", "Physique", "Informatique"];
  List<String> groups = ["Groupe 1", "Groupe 2", "Groupe 3"];
  List<String> rooms = ["Salle 101", "Salle 102", "Salle 103"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Session'),
      ),
       body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // ✅ Dropdown for Courses
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Sélectionner un cours",
                border: OutlineInputBorder(),
              ),
              items: courses.map((course) {
                return DropdownMenuItem(value: course, child: Text(course));
              }).toList(),
              onChanged: (value) => setState(() => selectedCourse = value),
            ),

            const SizedBox(height: 20),

            // ✅ Dropdown for Groups
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Sélectionner un groupe",
                border: OutlineInputBorder(),
              ),
              items: groups.map((group) {
                return DropdownMenuItem(value: group, child: Text(group));
              }).toList(),
              onChanged: (value) => setState(() => selectedGroup = value),
            ),

            const SizedBox(height: 20),

            // ✅ Dropdown for Rooms
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Sélectionner une salle",
                border: OutlineInputBorder(),
              ),
              items: rooms.map((room) {
                return DropdownMenuItem(value: room, child: Text(room));
              }).toList(),
              onChanged: (value) => setState(() => selectedRoom = value),
            ),

            const SizedBox(height: 40),

            // ✅ Button to Start Scanning
            Align(
              alignment: Alignment.centerRight,
             child: ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ScanScreen()),
    );
  },
  child: const Text("Lancer la séance"),
),

            ),
          ],
        ),
      ),
    );
  }
}



class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
        child: Column(
          children: [
            // ✅ Switch Positioned Correctly
            Align(
              alignment: Alignment.centerRight,
              child:Row(
                children: [
                  FlutterSwitch(
                value: isSwitched,
                onToggle: (newValue) {
                  setState(() {
                    isSwitched = newValue;
                  });
                },
                activeText: "Assiduité",
                inactiveText: "Présence",
                showOnOff: true,
                activeColor: Color.fromARGB(255, 6, 144, 91),
                inactiveColor: Color.fromARGB(255, 0, 7, 88),
                toggleColor: Colors.white,
                width: 115.0,
                height: 35.0,
                toggleSize: 30.0,
                borderRadius: 20.0,
              ),
              ElevatedButton(onPressed: (){}, child: Text('Termine la seance')),
                  ],
              )
            ),

            const SizedBox(height: 20),

            // ✅ Scan Instruction
            const Text(
              'Scan Your Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),
            const Text('Or', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 15),

            // ✅ QR Code Scan
           const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Scan QR Code',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                SizedBox(width: 10),
                Icon(Icons.qr_code, size: 34),
              ],
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () async {},
              child: const Text(
                'Open Camera',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),

            const SizedBox(height: 30),

            // ✅ Attendance Container
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[700],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('222231587607'),
                        SizedBox(width: 15),
                        Text('John Doe'),
                        SizedBox(width: 15),
                        Text('Present'),
                        SizedBox(width: 15),
                        Row(
                          children:
                              List.generate(2, (index) => Text('* ')), // Stars
                        ),
                      ],
                    ),
                  ),
          ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
