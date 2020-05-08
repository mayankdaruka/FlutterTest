import 'package:flutter/material.dart';
import "textsection1.dart";
import "models/location.dart";
import "imagebanner.dart";

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Usually DON'T PUT THIS IN BUILD BECAUSE IT IS CALLED MULTIPLE TIMES (LIKE RENDER)
    final locations = Location.fetchAll();
    final location = locations.first;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Example Tabs"),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.arrow_back)),
              Tab(icon: Icon(Icons.camera)),
              Tab(icon: Icon(Icons.comment))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              // Cascade notation, takes given item and lets you run a function against it/make an assignment
              children: <Widget>[Text(location.name, style: Theme.of(context).textTheme.headline1), ImageBanner(location.imagePath)]..addAll(textSections(location)),
            ),
            TextSection("Camera Icon", "Just a small paragraph to test this out and see if it's right part 2."),
            TextSection("Comment Icon", "Just a small paragraph to test this out and see if it's right part 3.")
          ],
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}