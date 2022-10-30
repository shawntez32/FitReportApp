import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class FitLogPage extends StatefulWidget {
  @override
  State<FitLogPage> createState() => _FitLogPageState();
}

class _FitLogPageState extends State<FitLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fit Report")),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/deadlift.jpg"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            SizedBox(height: 30),
            Container(
              height: 300,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 1')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 2')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 3')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 4')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 5')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 6')),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              child: ListView(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
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
