import 'package:flutter/material.dart';
import 'image_files.dart';
import 'all_text.dart';
import 'models/location.dart';

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;
    return Scaffold(
      appBar: AppBar(title: Text(location.name), actions: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("This is new page's snackbar"),
              duration: Duration(seconds: 4),
            ));
          },
          icon: const Icon(Icons.add_alert),
        )
      ]),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageFiles(location.imagePath),
            ...allText(location)
            // AllTexts("This is the Title", "written by Jeph",
            //     "My first flutter App. I want to be come one of good flutter developers"),
            // AllTexts("Second Title", "written by Joseph",
            //     "The goal is to make money throug development, and I wish it works out to me and God bless it"),
            // AllTexts("Third Title for my flutter App",
            //     "I hope that one day God will bless my effort and turns them into blessings for life"),
          ]),
    );
  }

  List<Widget> allText(Location location) {
    return location.facts
        .map((fact) => AllTexts(fact.title, fact.author, fact.text))
        .toList();
  }
}
