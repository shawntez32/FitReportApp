import 'dart:convert';
import 'dart:developer';
import 'package:app/screens/register.dart';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

var loginSuccessful = false;
var emailController = TextEditingController();
var pwordController = TextEditingController();
var userId;
var fname;
var lname;
var userEmail;
var userPword;
var age;
var userAddress;
var i = 0;

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _pwordController = TextEditingController();
  var stringResponse;
  var mapResponse;
  Future loginVer(email, pword) async {
    var apiUrl = 'https://fitreportusers22.herokuapp.com/Login';
    var client = http.Client();
    var uri = Uri.parse(apiUrl);
    var response = await client.get(uri);
    print(response.body);
    List list = json.decode(response.body);
    i = 0;
    while (i < list.length) {
      var x = list[i]["_id"];
      var e = list[i]["email"];
      var p = list[i]["pword"];
      if ((email + pword).toString() == (e + p).toString()) {
        setState(() {
          loginSuccessful = true;
          userId = list[i]["_id"];
          userEmail = list[i]["email"];
          userPword = list[i]["pword"];
          fname = list[i]["fname"];
          lname = list[i]["lname"];
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        });
      } else {
        loginSuccessful = false;
        print("unsuccessful");
      }
      print(i);
      print(list[i]["email"] + list[i]["pword"]);
      print(email + pword);
      i = i + 1;
    }
    return email;
  }

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
                image: DecorationImage(
                    image: AssetImage("assets/images/deadlift.jpg"),
                    fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              SizedBox(height: 35),
              Padding(
                padding: EdgeInsets.fromLTRB(75, 25, 75, 25),
                child: Container(
                  color: Colors.blue,
                  height: 42,
                  child: Text(
                    'Fitness Report',
                    style: TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.all(44.0),
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: ListView(children: [
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    TextField(
                      controller: _pwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      loginVer(_emailController.text, _pwordController.text);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    child: const Text('Submit'),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  'Don\'t have an account? Register!',
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
