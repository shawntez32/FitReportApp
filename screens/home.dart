// ignore_for_file: prefer_const_constructors

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
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/thirsty.jpg"))),
            child: Expanded(
              child: Row(children: [
                Expanded(
                  child: Column(children: [
                    Container(
                      height: 60,
                      child: Card(
                        child: ListTile(
                          tileColor: Colors.blue,
                          hoverColor: Color.fromARGB(143, 114, 173, 180),
                          title: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SetGoalPage()),
                              );
                            },
                            child: Text(
                              'New Goals',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(children: [
                    Container(
                      height: 60,
                      child: Card(
                        child: ListTile(
                          tileColor: Colors.blue,
                          title: TextButton(
                            onPressed: null,
                            child: Text('Track Goals',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Column(children: [
                    Container(
                      height: 60,
                      child: Card(
                        child: ListTile(
                          tileColor: Colors.blue,
                          title: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CalLogPage()),
                              );
                            },
                            child: Text('Calorie Log',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
            )));
  }
}
