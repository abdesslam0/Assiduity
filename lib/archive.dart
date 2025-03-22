import 'package:flutter/material.dart';

class Archive extends StatefulWidget
{
  @override
  _ArchiveState createState() => _ArchiveState();
}
class _ArchiveState extends State<Archive>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (appBar: AppBar(
        title: Text('Archive'),
      ),
     body:  ListView(
      
        children: [
        
    Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
    child:       Wrap(
            
      children: [
             MouseRegion(
  cursor: SystemMouseCursors.click, // Change cursor to a hand (pointer)
  child:GestureDetector(
  onTap: () {
   Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ArchiveList()),
    );
  },
  child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(25),
        decoration: BoxDecoration(
                
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Groupe1',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'L3',
                    style: TextStyle(fontSize: 20),
                  ),
                   Text(
                    '12-12-2012',
                    style: TextStyle(fontSize: 20),
                  ),
                ],  
              )
            ),),),
       
  MouseRegion(
  cursor: SystemMouseCursors.click, // Change cursor to a hand (pointer)
  child:GestureDetector(
  onTap: () {
   Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ArchiveList()),
    );
  },
  child: Container(
                padding: EdgeInsets.all(10),
                 margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Groupe1',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'L3',
                    style: TextStyle(fontSize: 20),
                  ),
                   Text(
                    '12-12-2012',
                    style: TextStyle(fontSize: 20),
                  ),
                ],  
              )
            ),),),
           
              MouseRegion(
  cursor: SystemMouseCursors.click, // Change cursor to a hand (pointer)
  child:GestureDetector(
  onTap: () {
   Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ArchiveList()),
    );
  },
  child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Groupe1',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'L3',
                    style: TextStyle(fontSize: 20),
                  ),
                   Text(
                    '12-12-2012',
                    style: TextStyle(fontSize: 20),
                  ),
                ],  
              )
            ),),),
      ],
          ),)
        ]
      )
    );
  }
}


class ArchiveList extends StatefulWidget
{
  @override
  _ArchiveListState createState() => _ArchiveListState();
}
class _ArchiveListState extends State<ArchiveList>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (appBar: AppBar(
        title: Text('Archive Students List'),
      ),
    body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
        child: Column(
          children: [
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
          ]))
    );
  }
}