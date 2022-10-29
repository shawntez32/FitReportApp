// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:app/screens/homeroutes/setFitGoals.dart';
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
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/deadlift.jpg"),
                    fit: BoxFit.cover)),
            child: ListView(children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          const Image(
                            height: 100,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/yoga.jpg'),
                          ),
                          Card(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SetGoalPage()),
                                  );
                                },
                                child: Text(
                                  "Calorie Goals",
                                  style: TextStyle(color: Colors.white),
                                )),
                            color: Colors.blue,
                          ),
                          Text(
                            "Set up Calorie Goals",
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ),
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          const Image(
                            height: 100,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/squat.jpg'),
                          ),
                          Card(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SetFitGoalPage()),
                                  );
                                },
                                child: Text(
                                  "Workout Goals",
                                  style: TextStyle(color: Colors.white),
                                )),
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
                height: 20,
              ),
              Expanded(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          const Image(
                            height: 100,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/thirsty.jpg'),
                          ),
                          Card(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SetGoalPage()),
                                  );
                                },
                                child: Text(
                                  "Calorie Log",
                                  style: TextStyle(color: Colors.white),
                                )),
                            color: Colors.blue,
                          ),
                          Text(
                            "Add to Calorie Log",
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ),
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          const Image(
                            height: 100,
                            width: 120,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/weights.jpg'),
                          ),
                          Card(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FitLogPage()),
                                  );
                                },
                                child: Text(
                                  "Fitness Log",
                                  style: TextStyle(color: Colors.white),
                                )),
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
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          const Image(
                            height: 100,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/thirsty.jpg'),
                          ),
                          Card(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SetGoalPage()),
                                  );
                                },
                                child: Text(
                                  "Fitness Report",
                                  style: TextStyle(color: Colors.white),
                                )),
                            color: Colors.blue,
                          ),
                          Text(
                            "Analyze your accountability grade and habits.",
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ),
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          const Image(
                            height: 100,
                            width: 120,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/weights.jpg'),
                          ),
                          Card(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FitLogPage()),
                                  );
                                },
                                child: Text(
                                  "Track Goals",
                                  style: TextStyle(color: Colors.white),
                                )),
                            color: Colors.blue,
                          ),
                          Text(
                            "Look at how far you've come through your journey.",
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ),
                    ]),
              ),
            ]),
          ),
        ));
  }
}
