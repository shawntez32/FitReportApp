import 'package:app/screens/login.dart';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class CalLogPage extends StatefulWidget {
  @override
  State<CalLogPage> createState() => _CalLogPageState();
}

Future<String> submitCalData(
    date, userid, meal1, meal2, meal3, meal4, meal5, meal6) async {
  var url = 'https://fitreportusers22.herokuapp.com/Login';
  var response = await http
      .post(Uri.https('fitreportusers22.herokuapp.com', 'Login'), body: {
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
                height: 180,
                color: Colors.white,
                child: ListView(
                  children: [
                    Container(
                      height: 30,
                      child: TextField(
                          controller: meal1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Meal 1')),
                    ),
                    Container(
                      height: 30,
                      child: TextField(
                          controller: meal2,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Meal 2')),
                    ),
                    Container(
                      height: 30,
                      child: TextField(
                          controller: meal3,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Meal 3')),
                    ),
                    Container(
                      height: 30,
                      child: TextField(
                          controller: meal4,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Meal 4')),
                    ),
                    Container(
                      height: 30,
                      child: TextField(
                          controller: meal5,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Meal 5')),
                    ),
                    Container(
                      height: 30,
                      child: TextField(
                          controller: meal6,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Meal 6')),
                    ),
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
                      submitCalData(now, userId, meal1, meal2, meal3, meal4,
                          meal5, meal6);
                    },
                    child: Text(
                      'Submit',
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
