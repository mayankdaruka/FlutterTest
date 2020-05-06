import 'package:flutter/material.dart';

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
      ),
    );
  }
}