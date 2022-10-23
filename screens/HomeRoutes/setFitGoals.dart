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
      appBar: AppBar(
        title: Text("Fit Report"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 114, 237, 114),
          child: ListView(children: [
            Container(
              height: 30,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 1')),
            ),
            Container(
              height: 30,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 2')),
            ),
            Container(
              height: 30,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 3')),
            ),
            Container(
              height: 30,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 4')),
            ),
            Container(
              height: 30,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Workout 5')),
            ),
            Container(
              height: 30,
              child: TextField(
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
