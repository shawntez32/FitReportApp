import 'dart:convert';
import 'dart:developer';
import 'package:app/api_service/get.dart';
import 'package:app/screens/register.dart';
import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  Future apiCall() async {
    http.Response response;
    response =
        await http.get(Uri.parse('https://fitreportusers22.herokuapp.com/'));
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
      });
    }
  }

  var stringResponse;
  var mapResponse;

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  void getMatchingUser(email, pword) {
    inspect(mapResponse);
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: TextField(
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
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
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
                  getUserData();
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
