// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/register.dart';
import '../pages/homepage.dart';
import '../utills/routes.dart';
import '../widgets/drawer.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/we.png'),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
