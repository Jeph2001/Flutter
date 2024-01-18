import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/createAccount.dart';
import 'package:secondproject/RestoBar/landing.dart';
import 'package:secondproject/RestoBar/pub.dart';
import 'package:secondproject/RestoBar/mainHome.dart';
import 'package:secondproject/RestoBar/booking.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  int selectedbutton = 0;

  void _selectedbbuton(int index) {
    selectedbutton = index;
  }

  final List<Widget> _pages = [
    const LandingPage(),
    const CreateAccount(),
    const PubPage(),
    const MainHome(),
    const BookingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            BottomNavigationBarItem(
                icon: Icon(Icons.person_3), label: 'Pb&Bar'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
          ]),
      body: _pages[selectedbutton],
    );
  }
}
