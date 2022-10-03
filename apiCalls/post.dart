import 'package:http/http.dart';

var url = 'https://fitreportusers22.herokuapp.com/';

void apiPost(url, vals) async {
  try {
    final userPost = await post(Uri.parse(url), body: {
      "fName": vals[0],
      "lName": vals[1],
      "age": vals[2],
      "email": vals[3],
      "password": vals
    });
    print(userPost);
  } catch (err) {
    print("Could not post!");
  }
}
