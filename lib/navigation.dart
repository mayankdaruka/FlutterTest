import 'package:flutter/material.dart';
import "textsection1.dart";

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Example Tabs"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.arrow_back)),
              Tab(icon: Icon(Icons.camera)),
              Tab(icon: Icon(Icons.comment))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            TextSection("Arrow Back Icon", "Just a small paragraph to test this out and see if it's right part 1."),
            TextSection("Camera Icon", "Just a small paragraph to test this out and see if it's right part 2."),
            TextSection("Comment Icon", "Just a small paragraph to test this out and see if it's right part 3.")
          ],
        ),
      ),
    );
  }
}