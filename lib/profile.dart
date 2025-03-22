import 'package:flutter/material.dart';

class profile extends StatelessWidget
{
  @override
       Widget build(BuildContext context) {
        return Scaffold(
         
          body:Padding(padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Profile Page',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
               Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 1, 136, 62),
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.asset(
                  'assets/jf.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Mohamed Oudha',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'University of Boumerdes',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
               ),
               SizedBox(height: 20),
                   Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black, width: 2),
        ),
        child:Column(
          children: [
             Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Icon(Icons.place)
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Place of bith',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'EL HARRACH',
                  style: TextStyle(
                    fontSize: 14,
                  
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 10),
  Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Icon(Icons.calendar_month)
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Date of bith',
                  style: TextStyle(
                     fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  '10-01-2004',
                  style: TextStyle(
                    fontSize: 14,
                    
                  ),
                ),
              ],
            )
          ],
        ),
          ],
        )
               ),
               SizedBox(height: 20),
              Container(
               
  child:Row(
    children: [
      Expanded(child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
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
    
  },
  child: const Text('LOGOUT'),
))
    ],
  )


)

              ],
            ),
          ),
          )
        );
       }
}