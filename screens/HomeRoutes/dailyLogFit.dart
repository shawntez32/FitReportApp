import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'package:app/screens/login.dart';

class FitLogPage extends StatefulWidget {
  @override
  State<FitLogPage> createState() => _FitLogPageState();
}

Future<String> submitWkoData(date, userid, workout1, workout2, workout3,
    workout4, workout5, workout6) async {
  var response = await http
      .post(Uri.https('fitreportusers22.herokuapp.com', 'LogFitness'), body: {
    "date": date,
    "userId": userid,
    "meal1": workout1,
    "meal2": workout2,
    "meal3": workout3,
    "meal4": workout4,
    "meal5": workout5,
    "meal6": workout6
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

class _FitLogPageState extends State<FitLogPage> {
  final workout1 = TextEditingController();
  final workout2 = TextEditingController();
  final workout3 = TextEditingController();
  final workout4 = TextEditingController();
  final workout5 = TextEditingController();
  final workout6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fit Report")),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/deadlift.jpg"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            SizedBox(height: 30),
            Container(
              height: 300,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 1')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 2')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 3')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 4')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 5')),
                  ),
                  Container(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Workout 6')),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              child: ListView(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    onPressed: () {
                      submitWkoData(now, userId, workout1, workout2, workout3,
                          workout4, workout5, workout6);
                    },
                    child:
                        Text('Submit', style: TextStyle(color: Colors.black)),
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
