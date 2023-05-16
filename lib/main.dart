import 'package:flutter/material.dart';
import 'package:news15/pages/login_page.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: prefer_const_constructors
      routes: {
        "login": (context) => HomePage(),
        "/": (context) => LoginPage()
      },
    );
  }
}
