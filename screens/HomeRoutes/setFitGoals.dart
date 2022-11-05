import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class SetFitGoalPage extends StatefulWidget {
  @override
  State<SetFitGoalPage> createState() => _SetFitGoalPageState();
}

Future<String> setWkoGoals(date, userid, workout1, workout2, workout3, workout4,
    workout5, workout6) async {
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

class _SetFitGoalPageState extends State<SetFitGoalPage> {
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
            SizedBox(height: 30),
            Container(
                height: 222,
                child: Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            height: 40,
                            color: Colors.white,
                            child: Text("Workout Name:"),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 1')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 2')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 3')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 4')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 5')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 6')),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 20,
                            color: Colors.white,
                            child: Text(
                              '''  Reps/Sets or''',
                            ),
                          ),
                          Container(
                            height: 20,
                            color: Colors.white,
                            child: Text(
                              '''Duration(min)''',
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 1')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 2')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 3')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 4')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 5')),
                          ),
                          Container(
                            color: Colors.white,
                            height: 30,
                            width: 150,
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Workout 6')),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 25.0,
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
                    onPressed: null,
                    child: Text('Set Goal'),
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
