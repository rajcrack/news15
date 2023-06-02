// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, sort_child_properties_last, must_be_immutable

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:news15/utills/posts_api.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Silvermade.com.au"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: fetchwpposts(),
              builder: (BuildContext context,
                  AsyncSnapshot snapshot) {
                if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return Center(
                      child:
                          CircularProgressIndicator());
                } else {
                  return ListView.builder(
                    itemCount: postsData.length,
                    itemBuilder:
                        (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Reusablerow(
                                title: 'name',
                                value: postsData[
                                        index]
                                    ['name']),
                            Reusablerow(
                                title:
                                    'User Name',
                                value: postsData[
                                        index]
                                    ['username']),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Reusablerow extends StatelessWidget {
  String title, value;
  Reusablerow(
      {Key? key,
      required this.title,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(value)],
      ),
    );
  }
}
