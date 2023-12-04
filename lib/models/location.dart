import 'location_facts.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Mubiryogo', 'assets/images/hills.jpeg', [
        LocationFact('Summary', 'written by someone',
            'This place is a really hot place where the businesses works 24hrs a day and they earn a lot of money'),
        LocationFact('How to work there', 'body',
            'You just take a bus from Downtown bus park station and you come to nyamirambo then mumarange'),
      ])
    ];
  }
}
