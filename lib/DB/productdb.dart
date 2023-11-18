// https://unwound-human.000webhostapp.com/PHP/Api/get_product_api.php

import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductDb {
  Future<List?> GetData() async {
    http.Response response = await http.get(
        Uri.parse(
            "https://unwound-human.000webhostapp.com/PHP/Api/get_product_api.php"));
    // print("dharmik");
    if (response.statusCode == 200) {
      List data1 = await jsonDecode(response.body);
      return data1;
    }
  }
}
