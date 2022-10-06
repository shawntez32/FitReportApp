import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class SetGoalPage extends StatefulWidget {
  @override
  State<SetGoalPage> createState() => _SetGoalPageState();
}

class _SetGoalPageState extends State<SetGoalPage> {
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
                      border: OutlineInputBorder(), labelText: 'Weight Goal')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Current Weight')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Timeframe(Days)')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Caloric Intake Goal')),
            ),
            Container(
              height: 100.0,
              child: ListView(
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text('Fitness Goals'),
                  ),
                ],
              ),
            ),
            Container(
              height: 100.0,
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
