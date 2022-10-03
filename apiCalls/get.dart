import 'package:app/models/userModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var apiUrl = 'https://fitreportusers22.herokuapp.com/';
Future getUserData() async {
  var response = await http.get(Uri.parse(apiUrl));
  var jsonData = jsonDecode(response.body);
  List<UserFit> users = [];
  for (var u in jsonData) {
    UserFit user = UserFit(
        fname: u['fname'],
        lname: u['lname'],
        email: u['email'],
        pword: u['pword']);
    users.add(user);
  }
  print(users.length);
}

class DataFromAPI extends StatefulWidget {
  @override
  State<DataFromAPI> createstate() => _DataFromAPIState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _DataFromAPIState extends State<DataFromAPI> {
  Future getUserData() async {
    var response = await http.get(Uri.parse(apiUrl));
    var jsonData = jsonDecode(response.body);
    List<UserFit> users = [];
    for (var u in jsonData) {
      UserFit user = UserFit(
          fname: u['fname'],
          lname: u['lname'],
          email: u['email'],
          pword: u['pword']);
      users.add(user);
    }
    print(users.length);
  }

  @override
  Widget build(BuildContext context) {
    return DataFromAPI();
  }
}
