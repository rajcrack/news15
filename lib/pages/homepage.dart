import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  num days = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My App")),
      ),
      body: Center(
        child: Container(
          child: Text("My First App on $days day "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
