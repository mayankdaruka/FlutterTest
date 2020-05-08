import "locationfact.dart";

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;
  Location(this.id, this.name, this.imagePath, this.facts);

    static List<Location> fetchAll() {
    return [
      Location(1, "Austin High School", "assets/images/ahs.jpg", [LocationFact("Summary", "I went to this school from 2015-2019."),
      LocationFact("How to Get There", "Take FM 1464 from Chelsea Harbor.")])
    ];
  }
}