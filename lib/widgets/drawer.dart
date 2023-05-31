// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:flutter/services.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utills/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const IconData exit_to_app_rounded = IconData(
        0xf71e,
        fontFamily: 'MaterialIcons');
    const accountimageurl =
        "https://upload.wikimedia.org/wikipedia/commons/e/e3/Suriya2011.jpg";

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      accountimageurl)),
              accountName: Text("Rishabh"),
              accountEmail:
                  Text("Rprna12345@gmail.com"),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black38,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.1,
            ),
            onTap: () {
              Navigator.pushNamed(
                  context, MyRoute.loginRoute);
            },
          ),
          ListTile(
            onTap: () {
              SystemChannels.platform
                  .invokeMethod(
                      'SystemNavigator.pop');
            },
            leading: Icon(
              exit_to_app_rounded,
              color: Colors.black38,
            ),
            title: Text(
              "Exit",
              textScaleFactor: 1.1,
            ),
          ),
        ],
      ),
    );
  }
}
