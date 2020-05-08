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
      LocationFact("How to Get There", "Take FM 1464 from Chelsea Harbor.")]),
      Location(2, "South View Primary School", "assets/images/svps.jpg", [LocationFact("Summary", "I went to this school from 2008-2013."),
      LocationFact("How to Get There", "5 minutes from Palm Gardens.")]),
      Location(3, "UT Austin", "assets/images/utaustin.jpg", [LocationFact("Summary", "I have been a student at this school since 2019."),
      LocationFact("How to Get There", "2.5 hour drive from Sugar Land.")])
    ];
  }
}