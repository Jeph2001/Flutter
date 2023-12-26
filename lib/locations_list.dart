import 'package:flutter/material.dart';
import 'package:secondproject/main.dart';
import 'models/location.dart';

//This screen is for displaying all Locations together as a list
// and with a very few related info, here we display only names.

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    // so we call the Location method called fetchAll to help us get
    // all locations

    final locations = Location.fetchAll();

    // and we create a scaffold for our location screen

    return Scaffold(
      appBar: AppBar(
        title: const Text('Locations'),
      ),

      // we use a ListView widget to be able to display our locations list
      // and use that as a path to the new page of each location separate
      // details. that's why you can see the onTap property and method.

      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                  child: Text(location.name),
                  onTap: () => _onLocationTap(context, location.id),
                ))
            .toList(),
      ),
    );
  }

  //here we were defining the onlocationTap function specifying that
  // it must take the ID of tapped location and navigate to its detail page

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, locationDetailRoute,
        arguments: {"id": locationID});
  }
}
