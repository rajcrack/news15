import 'package:flutter/material.dart';
import 'package:news15/pages/login_page.dart';

import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int days = 30;

    return MaterialApp(
      routes: {"login": (context) => HomePage(), "/": (context) => LoginPage()},
    );
  }
}
