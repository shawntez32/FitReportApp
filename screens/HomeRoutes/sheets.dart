import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [
          ListTile(
            tileColor: Colors.blue,
            hoverColor: Color.fromARGB(143, 114, 173, 180),
            title: TextButton(
              onPressed: null,
              child: Text('New Goals'),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: null,
              child: Text('Track Goals'),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: null,
              child: Text('Daily Log'),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: null,
              child: Text('Sheets'),
            ),
          ),
          ListTile(
            tileColor: Colors.blue,
            title: TextButton(
              onPressed: null,
              child: Text('Progress Report'),
            ),
          )
        ]),
      ),
    );
  }
}
