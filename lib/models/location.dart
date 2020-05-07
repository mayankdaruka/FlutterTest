import "locationfact.dart";

class Location {
  final String name;
  final String imagePath;
  final List<LocationFact> facts;
  Location(this.name, this.imagePath, this.facts);
}