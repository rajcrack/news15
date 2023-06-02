// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var postsData;
Future<List> fetchwpposts() async {
  final response = await http.get(
    Uri.parse(
        'https://jsonplaceholder.typicode.com/users'),
  );
  if (response.statusCode == 200) {
    return postsData =
        jsonDecode(response.body.toString());
  }
  return postsData =
      jsonDecode(response.body.toString());
}
