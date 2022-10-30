// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:app/screens/homeroutes/setFitGoals.dart';
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
      appBar: AppBar(
        title: Text("Fit Report"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/deadlift.jpg"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(labelText: "Current Weight"),
                ),
              ),
            ),
            Container(
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(labelText: "Goal Weight"),
                ),
              ),
            ),
            Container(
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(labelText: "Start Date"),
                ),
              ),
            ),
            Container(
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(labelText: "End Date"),
                ),
              ),
            ),
            Container(
              height: 40,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: TextField(
                  decoration: InputDecoration(labelText: "Caloric Intake Goal"),
                ),
              ),
            ),
            Container(
              height: 200.0,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SetFitGoalPage()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: Text(
                        'Fitness Goals',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: null,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
