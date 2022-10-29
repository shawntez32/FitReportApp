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
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        const Image(
                          height: 100,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/yoga.jpg'),
                        ),
                        Card(
                          child: Text("Calorie Goals"),
                          color: Colors.blue,
                        ),
                        Text(
                          "Set up Calorie Goals",
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    ),
                    Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        const Image(
                          height: 100,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/squat.jpg'),
                        ),
                        Card(
                          child: Text("Workout Goals"),
                          color: Colors.blue,
                        ),
                        Text(
                          "Set up Workout Goals",
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    ),
                  ]),
            ),
            SizedBox(
              height: 80,
            ),
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        const Image(
                          height: 100,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/thirsty.jpg'),
                        ),
                        Card(
                          child: Text("Calorie Log"),
                          color: Colors.blue,
                        ),
                        Text(
                          "Add to Calorie Log",
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    ),
                    Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        const Image(
                          height: 100,
                          width: 120,
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/weights.jpg'),
                        ),
                        Card(
                          child: Text("Fitness Log"),
                          color: Colors.blue,
                        ),
                        Text(
                          "Add to Fitness Log",
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
