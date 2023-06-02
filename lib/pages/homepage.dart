// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final days = 20;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "News 15",
          style: TextStyle(
              fontSize: 23.00,
              fontWeight: FontWeight.w500),
        )),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child:
              Text("My First App on $days day "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
