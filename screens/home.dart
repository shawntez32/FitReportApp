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
                  image: AssetImage("assets/images/deadlift.jpg"),
                  fit: BoxFit.cover)),
          child: ListView(children: [
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.cyan,
                      child: Text("Yo"),
                    ),
                    Container(
                      height: 50,
                      color: Colors.purple,
                      child: Text("Yo"),
                    ),
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        const Image(
                          height: 100,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/thirsty.jpg'),
                        ),
                        Card(child: Text("Yo2"))
                      ]),
                    ),
                    Container(
                      height: 50,
                      color: Colors.purple,
                      child: Text("Yo2"),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
