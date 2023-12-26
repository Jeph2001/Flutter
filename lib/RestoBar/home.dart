import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/landing.dart';
import 'package:secondproject/RestoBar/pub.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(16, 67, 66, 66),
        appBar: AppBar(
          title: const Text('Jo Pub&Resto'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Scaffold(body: LandingPage());
                  }));
                },
                icon: const Icon(Icons.perm_identity))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                  height: 200,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&w=600')),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue;
                    }
                    return Color.fromARGB(141, 25, 15, 3);
                  })),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Scaffold(
                        body: PubPage(),
                      );
                    }));
                  },
                  child: const Text(
                    'Visit Pub&Bar',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )),
              const SizedBox(height: 15),
              const Image(
                  height: 200,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?auto=compress&cs=tinysrgb&w=600')),
              const SizedBox(
                height: 8,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue;
                    }
                    return Color.fromARGB(141, 25, 15, 3);
                  })),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Scaffold(
                        body: LandingPage(),
                      );
                    }));
                  },
                  child: const Text(
                    'Visit Restaurant',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ));
  }
}
