// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: (Column(
      children: [
        Image.asset(
          "assets/images/fingerprint.png",
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily:
                GoogleFonts.lato().fontFamily,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 30.00, horizontal: 44.00),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  print(" Hi Rishabh");
                },
                child: Text("Login"),
                style: TextButton.styleFrom(),
              ),
            ],
          ),
        )
      ],
    )));
  }
}
