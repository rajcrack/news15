// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news15/pages/homepage.dart';
import 'package:news15/utills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String username = "";
  String password = "";
  bool isvisible = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        isvisible = true;
      });

      const SnackBar(content: Text('Processing Data'));
      await Future.delayed(Duration(seconds: 5));

      await Navigator.pushNamed(context, MyRoute.homeRoute);
      setState(() {
        isvisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                    fontFamily: GoogleFonts.lato().fontFamily,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.00, horizontal: 44.00),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter name",
                          labelText: "name",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "PLease enter your name";
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "PLease enter username";
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "PLease enter your password";
                          } else if (value.length < 8) {
                            return "Password length must be more than 10";
                          }
                          return null;
                        },
                        onChanged: (value2) {
                          password = value2;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Visibility(
                        child: Text(
                          "Username : $username",
                        ),
                        visible: isvisible ? true : false,
                      ),
                      Visibility(
                        child: SizedBox(
                          height: 20,
                        ),
                        visible: isvisible ? true : false,
                      ),
                      Visibility(
                        child: Text("Password : $password"),
                        visible: isvisible ? true : false,
                      ),
                      Visibility(
                        child: SizedBox(
                          height: 20,
                        ),
                        visible: isvisible ? true : false,
                      ),
                      ElevatedButton(
                        onPressed: () => moveToHome(context),
                        child: Text("Login"),
                        style: TextButton.styleFrom(
                            minimumSize: Size(120, 35)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
