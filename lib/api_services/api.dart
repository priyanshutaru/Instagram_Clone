import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:instagram_clone/api_services/model.dart';

var base = "https://dummyjson.com";

getPost() async {
  var response = await http.get(Uri.parse("$base/posts"));
  try {
    if (response.statusCode == 200) {
      var data = postHereFromJson(response.body);
      return data.posts;
    } else {
      return ("Some Error Occure");
    }
  } catch (e) {
    print(e.toString());
  }
}
