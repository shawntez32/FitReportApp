import 'package:app/screens/home.dart';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'package:app/api_service/post.dart';
import '../models/userModel.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

Future<String> submitData(email, pword, fname, lname) async {
  var url = 'https://fitreportusers22.herokuapp.com/Login';
  var response = await http
      .post(Uri.https('fitreportusers22.herokuapp.com', 'Login'), body: {
    'email': email,
    'pword': pword,
    "fname": fname,
    "lname": lname,
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

class _RegisterPageState extends State<RegisterPage> {
  final _fnameControl = TextEditingController();
  final _lnameControl = TextEditingController();
  final _emailControl = TextEditingController();
  final _pwordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fit Report"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                  Color.fromARGB(255, 218, 196, 89),
                  Color.fromARGB(255, 114, 237, 114)
                ])),
            height: 800.0,
            child: ListView(children: [
              SizedBox(height: 35),
              Text(
                'Fitness Report',
                style: TextStyle(fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
                  controller: _fnameControl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
                  controller: _lnameControl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
                  controller: _emailControl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
                  controller: _pwordControl,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: SizedBox(
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      final fname = _fnameControl.text;
                      final lname = _lnameControl.text;
                      final email = _emailControl.text;
                      final pword = _pwordControl.text;

                      submitData(email, pword, fname, lname);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(16.0),
                    ),
                    child: const Text(
                      'Submit',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
