import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class ReportPage extends StatefulWidget {
  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitness Report"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/deadlift.jpg"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 220,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    height: 30,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Weight Goal')),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Current Weight')),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Timeframe(Days)')),
                  ),
                  Container(
                    height: 30,
                    child: TextField(
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
