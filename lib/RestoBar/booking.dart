import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/home.dart';
import 'package:secondproject/RestoBar/landing.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

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
                  return const Scaffold(
                    body: LandingPage(),
                  );
                }));
              },
              icon: const Icon(Icons.perm_identity))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Table Booking Form'),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Names',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            keyboardType: TextInputType.name,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Contacts',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            keyboardType: TextInputType.phone,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Number of People',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Date and Time',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            keyboardType: TextInputType.datetime,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Scaffold(
                    body: HomePage(),
                  );
                }));
              },
              child: const Text('Submit')),
        ],
      ),
    );
  }
}
