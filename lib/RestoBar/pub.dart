import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/landing.dart';
import 'package:secondproject/RestoBar/booking.dart';

class PubPage extends StatelessWidget {
  const PubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Text('All Drinks'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Scaffold(
                        body: BookingPage(),
                      );
                    }));
                  },
                  child: const Text('Book a Table'))
            ],
          ),
        ));
  }
}
