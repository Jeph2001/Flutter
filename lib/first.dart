import 'package:flutter/material.dart';
import 'package:secondproject/main.dart';
import 'image_files.dart';
import 'all_text.dart';
import 'models/location.dart';

// this screen is for each Location details

class FirstApp extends StatelessWidget {
  final int _locationID;

  const FirstApp(this._locationID, {super.key});

  @override
  Widget build(BuildContext context) {
    // here we are fetching each location by its ID

    final locations = Location.fetchByID(_locationID);

    // this is the scaffold for our screen
    return Scaffold(
      appBar: AppBar(
        title: Text(locations.name),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //         content: Text("This is new page's snackbar"),
        //         duration: Duration(seconds: 4),
        //       ));
        //     },
        //     icon: const Icon(Icons.add_alert),
        // ]  )
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //here we are rendering the details for location,
            // its image and other related info.

            ImageFiles(locations.imagePath),
            ...allText(locations),
            IconButton(
                iconSize: 50,
                padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                onPressed: () {
                  Navigator.pushNamed(context, locationsRoute);
                },
                icon: const Icon(Icons.home))

            // this is how we used to display information about location
            // but it was not dynamic like the above line of codes.

            // AllTexts("This is the Title", "written by Jeph",
            //     "My first flutter App. I want to be come one of good flutter developers"),
            // AllTexts("Second Title", "written by Joseph",
            //     "The goal is to make money throug development, and I wish it works out to me and God bless it"),
            // AllTexts("Third Title for my flutter App",
            //     "I hope that one day God will bless my effort and turns them into blessings for life"),
          ]),
    );
  }

  // this is a map function which helps to convert one type of list to
  // another type of list especially when you're using one list to
  // display another list. so we create a function called allText()
  // we return that list from Location class and we map it to AllTexts
  // class in order to make it possible to displaye them.

  List<Widget> allText(Location location) {
    return location.facts
        .map((fact) => AllTexts(fact.title, fact.author, fact.text))
        .toList();
  }
}
