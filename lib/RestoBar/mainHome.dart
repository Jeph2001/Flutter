import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/pub.dart';
import 'package:secondproject/RestoBar/landing.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Home',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: const Image(
                height: 200,
                image: NetworkImage(
                    'https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&w=600')),
          ),
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
                'Pub&Bar',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              )),
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: const Image(
                height: 200,
                image: NetworkImage(
                    'https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?auto=compress&cs=tinysrgb&w=600')),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.blue;
                }
                return const Color.fromARGB(141, 25, 15, 3);
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
                'Restaurant',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
