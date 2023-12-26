import 'package:flutter/material.dart';
import 'package:secondproject/locations_list.dart';
// import 'package:secondproject/locations_list.dart';
import 'package:secondproject/main.dart';
import 'image_files.dart';
import 'all_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Scaffold(
                    body: Locations(),
                  );
                }));
              },
              icon: const Icon(Icons.navigate_next))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ImageFiles('assets/images/sea.jpeg'),
          const AllTexts('About Jeph', 'jeph',
              'Maniragaba Joseph is a junior young developer who is very interested in pursuing the development field'),
          IconButton(
              iconSize: 50,
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
              onPressed: () {
                Navigator.pushNamed(context, locationsRoute);
              },
              icon: const Icon(Icons.home))
        ],
      ),
    );
  }
}
