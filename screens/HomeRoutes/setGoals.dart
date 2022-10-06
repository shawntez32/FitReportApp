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
                      border: OutlineInputBorder(),
                      labelText: 'Current Weight')),
            ),
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
                      labelText: 'Caloric Intake')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Protein')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Carbohydrates')),
            ),
            ListTile(
              tileColor: Colors.blue,
              title: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Fat')),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetGoalPage()),
                      );
                    },
                    child: Text('Fitness Goals'),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('Submit'),
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
