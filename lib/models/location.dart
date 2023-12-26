import 'location_facts.dart';

// this is class for defining and implementing the Location and
// its all required parameters

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  // we have to create this function fetchAll() in order to use it when
  // we want to display all information on location and its details.
  // and it holds the data about location, it's like the database storage

  static List<Location> fetchAll() {
    return [
      Location(1, 'Mubiryogo', 'assets/images/hills.jpeg', [
        LocationFact('Summary', 'written by someone',
            'This place is a really hot place where the businesses works 24hrs a day and they earn a lot of money'),
      ]),
      Location(2, 'Mumarange', 'assets/images/otherhill.jpeg', [
        LocationFact('About this location', 'Unknown',
            'Mumarange is one of locations that belongs to Mubiryogo region. it is mostly known for its hot services in trade')
      ]),
      Location(3, 'Kuri 40', 'assets/images/house.jpeg', [
        LocationFact('Know this place', 'not necessary',
            'Kuri muringwine(40) is a popular place in this Kigali and in whole country and it is a very crowded place in kigali with very big commessial tradings')
      ])
    ];
  }

  //then because we wanted to render this information on more than
  // one locations, there has to be a way such that each location will
  // be rendered separately and return its unique information, that's
  // where this function fetchByID() comes in.

  static fetchByID(int locationID) {
    // fetch all Locations, iterate them and when it catchs the right location
    // it instantly returns it

    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
