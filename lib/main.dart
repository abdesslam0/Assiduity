import 'package:flutter/material.dart';

import 'archive.dart';
import 'auth.dart';
import 'importexport.dart';
import 'justifier.dart';
import 'profile.dart';
import 'startsession.dart';

void main() {
  runApp(PFEApp());
}

class PFEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(), // No semicolon here
    );
  }
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> pages = [
    HomePage(),
    profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex], // ✅ Switching pages
      bottomNavigationBar:NavigationBar(
  selectedIndex: _selectedIndex,
  onDestinationSelected: _onItemTapped,
  backgroundColor: const Color.fromARGB(255, 11, 7, 47),
  animationDuration: const Duration(microseconds: 100),
  indicatorColor: Colors.green,
  destinations: const [
    NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  ],
)

    );
  }
}

// ✅ Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       
        Container(
          width: double.infinity,
          height: 100,
          margin: const EdgeInsets.fromLTRB(20, 60, 20, 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 15,
               
              ),
            ],
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            'assets/progress.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children:
            [
              Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSingleButton(context, "Start Session", Icons.play_circle_fill,StartSessionScreen()),
          _buildSingleButton(context, "Justifier", Icons.edit_note,JustifyScreen()),
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSingleButton(context, "Archive", Icons.archive,Archive()),
          _buildSingleButton(context, "Impoer & Export", Icons.data_exploration,ImportExportScreen()),
        ],
      ),
    )
            ]
          ),
        ),
      ],
    );
  }

  Widget _buildSingleButton(BuildContext context, String label, IconData icon,Widget widgets) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
       Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widgets),
    );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 45, 151, 121),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.white, size: 24),
              const SizedBox(height: 5),
              Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

 
}






