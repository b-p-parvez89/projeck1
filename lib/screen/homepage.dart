// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Header Section
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('asset/mypic.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Md Parvez Ali',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 120, 1, 1),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 10, 2, 2),
                  ),
                ),
              ],
            ),

            // Content Section
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I am a passionate Flutter developer with a strong love for creating beautiful and functional apps.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Chip(label: Text('Flutter')),
                  Chip(label: Text('Dart')),
                  Chip(label: Text('UI/UX Design')),
                  // Add more skills as needed

                  SizedBox(height: 20),
                  Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(Icons.email),
                      SizedBox(width: 10),
                      Text('parveztarek4@gmail.com'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text('+88 01843469489'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
