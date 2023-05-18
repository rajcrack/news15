// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news15/pages/homepage.dart';
import 'package:news15/utills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() =>
      _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/fingerprint.png",
            height: 220.00,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome ,$name",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily:
                  GoogleFonts.lato().fontFamily,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 30.00,
                horizontal: 44.00),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    labelText: "name",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value1) {
                    username = value1;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                  onChanged: (value2) {
                    password = value2;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Username : $username",
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Password : $password"),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        MyRoute.homeRoute);
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(
                      minimumSize: Size(120, 35)),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
