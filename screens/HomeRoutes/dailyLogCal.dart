import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class CalLogPage extends StatefulWidget {
  @override
  State<CalLogPage> createState() => _CalLogPageState();
}

class _CalLogPageState extends State<CalLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800.0,
          child: ListView(children: [
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Meal 1')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Meal 2')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Meal 3')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Meal 4')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Meal 5')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Meal 6')),
            ),
            Container(
              height: 400.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Color.fromARGB(255, 218, 196, 89),
                    Color.fromARGB(255, 114, 237, 114)
                  ])),
              child: ListView(
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text('Set Goal'),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('Fitness Goals'),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}