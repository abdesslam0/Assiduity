import 'package:flutter/material.dart';

import 'main.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.83),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
          width: double.infinity,
          height: 100,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            'assets/progress.png',
            fit: BoxFit.fill,
          ),
        ),
                const SizedBox(height: 32.0),
                const Text(
                  "Progeciele d'Assiduité",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                
                const SizedBox(height: 32.0),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.black),
                    labelText: 'Username',
                     labelStyle: const TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                   
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 16.0),
               TextField(
  obscureText: true,
  decoration: InputDecoration(
    prefixIcon: const Icon(Icons.key, color: Colors.black),
    labelText: 'Password',
    labelStyle: const TextStyle(color: Colors.black),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
  style: const TextStyle(color: Colors.black),
)
,
                const SizedBox(height: 24.0),
                             
               
  Row(
    children: [
      Expanded(child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 3, 148, 75)),
    padding: WidgetStateProperty.all<EdgeInsets>(
      const EdgeInsets.symmetric(vertical: 17),
    ),
    textStyle: WidgetStateProperty.all<TextStyle>(
      const TextStyle(
       fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Text color
  ),
  onPressed: () {
   Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => MainPage()),
);

  },
  child: const Text('LOGIN'),
))
    ],
  )



,
                const SizedBox(height: 16.0),
                TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
