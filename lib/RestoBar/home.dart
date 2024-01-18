import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/landing.dart';
import 'package:secondproject/RestoBar/pub.dart';
import 'package:secondproject/RestoBar/createAccount.dart';
import 'package:secondproject/RestoBar/booking.dart';
import 'package:secondproject/RestoBar/mainHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // HomePage({super.key});
  int selectedbutton = 2;

  void _selectedbbuton(int index) {
    setState(() {
      selectedbutton = index;
    });
  }

  final List<Widget> _pages = [
    const LandingPage(),
    const CreateAccount(),
    const MainHome(),
    const PubPage(),
    const BookingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(16, 67, 66, 66),
      // appBar: AppBar(
      //   title: const Text('Jo Pub&Resto'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 11, 22, 28),
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          currentIndex: selectedbutton,
          onTap: _selectedbbuton,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.navigate_before), label: 'Go Back'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3), label: 'Pub&Bar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Booking'),
          ]),
      body: _pages[selectedbutton],
    );
  }
}
