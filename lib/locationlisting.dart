import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationList extends StatelessWidget {
  final locations = Location.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locations")
      ),
      body: ListView(
        children: locations.map((location) => GestureDetector(
          child: Text(location.name, style: Theme.of(context).textTheme.subtitle),
          onTap: () => _onLocationTap(context, location.id),
        )).toList(),
      ),
    );
  }

  // If it is void you can just remove the void keyword
  void _onLocationTap(BuildContext context, int locationID) {
    // Navigate to a new screen
    
  }

}