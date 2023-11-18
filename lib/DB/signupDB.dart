import 'dart:convert';

import 'package:http/http.dart' as http;

class RegisterDB {
  Future SingUpData(
      {required Object? data}) async {
    Map<String, String> h = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };
    print("dharmik");
    http.Response response = await http.post(
        Uri.parse(
            "https://unwound-human.000webhostapp.com/PHP/Api/add_customer_api.php"),
        body: data,
        headers: h);
    print("dharmik");
    if (response.statusCode == 200) {
      Map<String, dynamic> data1 = await jsonDecode(response.body);
      print(data1);
      return data1;
    }
  }

  Future SingInData(
      {required Object? data}) async {
    Map<String, String> h = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };
    print("dharmik");
    http.Response response = await http.post(
        Uri.parse(
            "https://unwound-human.000webhostapp.com/PHP/Api/verify_customer_api.php"),
        body: data,
        headers: h);
    print("dharmik");
    if (response.statusCode == 200) {
      Map<String, dynamic> data1 = await jsonDecode(response.body);
      print(data1);
      return data1;
    }
  }
}
