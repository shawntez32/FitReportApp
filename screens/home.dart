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
              child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.cyan,
              )
            ],
          )),
        ));
  }
}
