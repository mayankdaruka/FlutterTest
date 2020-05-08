import 'package:flutter/material.dart';
import "textsection1.dart";
import "models/location.dart";
import "imagebanner.dart";

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    // Usually DON'T PUT THIS IN BUILD BECAUSE IT IS CALLED MULTIPLE TIMES (LIKE RENDER)
    final location = Location.fetchByID(_locationID);
    return Scaffold(
        appBar: AppBar(
          title: Text("Location Details"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // Cascade notation, takes given item and lets you run a function against it/make an assignment
          children: <Widget>[Text(location.name, style: Theme.of(context).textTheme.headline1), ImageBanner(location.imagePath)]..addAll(textSections(location)),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}