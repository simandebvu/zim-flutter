import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location(
      {this.id,
      this.name,
      this.imagePath,
      this.userItinerarySummary,
      this.tourPackageName,
      this.facts});

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: "Great Zimbabwe",
          imagePath: "assets/images/vicfalls.jpg",
          userItinerarySummary: "2 Days",
          tourPackageName: "Deluxe",
          facts: [
            LocationFact('Location', 'Masvingo, Zimbabwe'),
            LocationFact('Age', 'Ask Google!')
          ]),
      Location(
          id: 2,
          name: "Vic Falls",
          imagePath: "assets/images/vicfalls.jpg",
          userItinerarySummary: "3 Days",
          tourPackageName: "Deluxe",
          facts: [
            LocationFact('Location', 'Masvingo, Zimbabwe'),
            LocationFact('Age', 'Ask Google!')
          ]),
      Location(
          id: 3,
          name: "Matopos",
          imagePath: "assets/images/vicfalls.jpg",
          userItinerarySummary: "4 Days",
          tourPackageName: "Deluxe",
          facts: [
            LocationFact('Location', 'Masvingo, Zimbabwe'),
            LocationFact('Age', 'Ask Google!')
          ]),
    ];
  }

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
