// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import '/utills/routes.dart';
import 'pages/homepage.dart';
import 'pages/login_page.dart';
import 'pages/register.dart';
import 'pages/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      initialRoute: MyRoute.newsRoute,
      routes: {
        MyRoute.homeRoute: (context) =>
            HomePage(),
        MyRoute.loginRoute: (context) =>
            LoginPage(),
        MyRoute.registerRoute: (context) =>
            MyRegister(),
        MyRoute.newsRoute: (context) => News(),
      },
    );
  }
}
