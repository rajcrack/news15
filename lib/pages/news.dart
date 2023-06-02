// ignore_for_file: prefer_const_constructors
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '/widgets/drawer.dart';
import '/utills/posts_api.dart';
import 'dart:convert';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "News ",
          style: TextStyle(
              fontSize: 23.00,
              fontWeight: FontWeight.w500),
        )),
      ),
      drawer: MyDrawer(),
    );
  }
}
