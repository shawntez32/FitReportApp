import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'homeroutes/dailyLogCal.dart';
import 'homeroutes/setGoals.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          ListTile(
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
                style: TextStyle(color: Colors.black45),
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: null,
              child: Text('Track Goals'),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalLogPage()),
                );
              },
              child: Text(
                'Daily Log',
                style: TextStyle(color: Colors.black45),
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: null,
              child: Text('Sheets'),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: null,
              child: Text('Progress Report'),
            ),
          ),
          Container(
            height: 600.0,
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
