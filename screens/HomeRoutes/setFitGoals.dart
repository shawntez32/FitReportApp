import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class SetFitGoalPage extends StatefulWidget {
  @override
  State<SetFitGoalPage> createState() => _SetFitGoalPageState();
}

class _SetFitGoalPageState extends State<SetFitGoalPage> {
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
                      border: OutlineInputBorder(), labelText: 'Workout 1')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 2')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 3')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 4')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 5')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 6')),
            ),
            Container(
              height: 25.0,
              child: ListView(
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text('Set Goal'),
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
