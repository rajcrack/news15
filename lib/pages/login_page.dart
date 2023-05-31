// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/register.dart';
import '../pages/homepage.dart';
import '../utills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() =>
      _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isvisible = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        isvisible = true;
      });

      await Future.delayed(Duration(seconds: 5));

      await Navigator.pushNamed(
          context, MyRoute.homeRoute);
      setState(() {
        isvisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/register.png'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 30.00, top: 30.00),
                child: Container(
                  padding:
                      EdgeInsets.only(top: 22.00),
                  child: Text(
                    "Welcome\n back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 33.00,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context)
                              .size
                              .height *
                          0.5,
                      right: 35,
                      left: 35),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty) {
                              return "PLease enter your Email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors
                                  .grey.shade100,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              10))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty) {
                              return "PLease enter your password";
                            } else if (value
                                    .length <
                                8) {
                              return "Password length must be more than 10";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors
                                  .grey.shade100,
                              filled: true,
                              hintText:
                                  "Password",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              10))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              moveToHome(context),
                          child: Text("Sign Up"),
                          style: TextButton
                              .styleFrom(
                                  minimumSize:
                                      Size(200,
                                          49)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context,
                                MyRoute
                                    .registerRoute);
                          },
                          child: Text(
                              "Don't have an acount! Sign Up"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
