import 'dart:convert';
import 'models/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/login.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: SizedBox(
          height: 2000.0,
          child: ListView(
            children: [
              ListTile(
                focusColor: Colors.tealAccent,
                tileColor: Colors.tealAccent,
                textColor: Colors.black54,
                leading: Image.network(
                    'https://avatars.githubusercontent.com/u/69469670?v=4'),
                title: Text("Trevor"),
                subtitle: Text('Age 28 located it Niagra Falls.'),
              ),
              SizedBox(
                height: 3.0,
              ),
              const ListTile(
                focusColor: Colors.tealAccent,
                tileColor: Colors.tealAccent,
                textColor: Colors.black54,
                leading: Icon(Icons.account_circle),
                title: Text("Lawrence"),
              ),
              SizedBox(
                height: 3.0,
              ),
              SizedBox(
                height: 70.0,
                child: Container(
                  color: Colors.grey,
                  child: ListView(
                    children: [
                      ListTile(
                          leading: Icon(Icons.airline_seat_flat),
                          title: Text('Fit Report')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Container(
                color: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email', border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
