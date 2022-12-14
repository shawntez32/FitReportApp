import 'package:app/screens/login.dart';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class CalLogPage extends StatefulWidget {
  @override
  State<CalLogPage> createState() => _CalLogPageState();
}

Future<String> submitCalData(
    date, userid, meal1, meal2, meal3, meal4, meal5, meal6) async {
  var response = await http
      .post(Uri.https('fitreportusers22.herokuapp.com', 'LogCalories'), body: {
    "date": date,
    "userId": userid,
    "meal1": meal1,
    "meal2": meal2,
    "meal3": meal3,
    "meal4": meal4,
    "meal5": meal5,
    "meal6": meal6
  });
  var data = response.body;
  print(data);

  if (response.statusCode == 200) {
    print('Sign-up successful');
  } else {
    print('Sign-up Unsuccessful');
  }

  return data;
}

class _CalLogPageState extends State<CalLogPage> {
  final meal1 = TextEditingController();
  final meal2 = TextEditingController();
  final meal3 = TextEditingController();
  final meal4 = TextEditingController();
  final meal5 = TextEditingController();
  final meal6 = TextEditingController();

  final cals1 = TextEditingController();
  final cals2 = TextEditingController();
  final cals3 = TextEditingController();
  final cals4 = TextEditingController();
  final cals5 = TextEditingController();
  final cals6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fit Report"),
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
                height: 210,
                color: Colors.white,
                child: ListView(
                  children: [
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(child: Text("Meal Name:")),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: meal1,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Meal 1')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: meal2,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Meal 2')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: meal3,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Meal 3')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: meal4,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Meal 4')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: meal5,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Meal 5')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: meal6,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Meal 6')),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(child: Text("Calories:")),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: cals1,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Calories 1')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: cals2,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Calories 2')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: cals3,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Calories 3')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: cals4,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Calories 4')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: cals5,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Calories 5')),
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: TextField(
                                  controller: cals6,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Calories 6')),
                            ),
                          ],
                        )
                      ],
                    )),
                  ],
                )),
            Container(
              height: 100.0,
              child: ListView(
                children: [
                  SizedBox(height: 15),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    onPressed: () {
                      submitCalData(now, userId, meal1.text, meal2.text,
                          meal3.text, meal4.text, meal5.text, meal6.text);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.black),
                    ),
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
