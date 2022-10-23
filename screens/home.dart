import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'homeroutes/dailyLogCal.dart';
import 'homeroutes/dailyLogFit.dart';
import 'homeroutes/setGoals.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fit Report"),
      ),
      body: Container(
        child: ListView(children: [
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              hoverColor: Color.fromARGB(143, 114, 173, 180),
              title: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SetGoalPage()),
                  );
                },
                child: Text(
                  'New Goals',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              title: TextButton(
                onPressed: null,
                child:
                    Text('Track Goals', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              title: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalLogPage()),
                  );
                },
                child: Text('Calorie Log', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              title: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FitLogPage()),
                  );
                },
                child: Text('Fitness Log', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              title: TextButton(
                onPressed: null,
                child: Text('Sheets', style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Card(
            child: ListTile(
              tileColor: Colors.blue,
              title: TextButton(
                onPressed: null,
                child: Text('Progress Report',
                    style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                  Color.fromARGB(255, 218, 196, 89),
                  Color.fromARGB(255, 114, 237, 114)
                ])),
          )
        ]),
      ),
    );
  }
}
