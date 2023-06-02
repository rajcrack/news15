// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/homepage.dart';
import '../utills/routes.dart';
import 'dart:io';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() =>
      _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool isvisible = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        isvisible = true;
      });

      await Future.delayed(Duration(seconds: 5));

      await Navigator.pushNamed(
          context, MyRoute.loginRoute);
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
                    "SignUp Here",
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
                          decoration: InputDecoration(
                              fillColor: Colors
                                  .grey.shade100,
                              filled: true,
                              hintText:
                                  "First Name",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              10))),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty) {
                              return "PLease enter your Name";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors
                                  .grey.shade100,
                              filled: true,
                              hintText:
                                  "LastName",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              10))),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty) {
                              return "Please enter your Last Name";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
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
                          child: Text("SignUp"),
                          style: TextButton
                              .styleFrom(
                                  minimumSize:
                                      Size(200,
                                          49)),
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
