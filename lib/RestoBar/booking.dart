import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/home.dart';
// import 'package:secondproject/RestoBar/home.dart';
// import 'package:secondproject/RestoBar/landing.dart';

class BookingPage extends StatefulWidget {
  final TextEditingController? controller;

  const BookingPage({this.controller, Key? key}) : super(key: key);

  @override
  CreateBookingPageState createState() => CreateBookingPageState();
}

class CreateBookingPageState extends State<BookingPage> {
  TextEditingController namesController = TextEditingController();
  TextEditingController contactsController = TextEditingController();
  TextEditingController numberOfPeopleController = TextEditingController();
  TextEditingController dateAndTimeController = TextEditingController();

  @override
  void dispose() {
    namesController.dispose();
    contactsController.dispose();
    numberOfPeopleController.dispose();
    dateAndTimeController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade400,
              ),
              padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
              child: const Text(
                'Table Booking Form',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: namesController,
              decoration: InputDecoration(
                  labelText: 'Names',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: contactsController,
              decoration: InputDecoration(
                  labelText: 'Contacts',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: numberOfPeopleController,
              decoration: InputDecoration(
                  labelText: 'Number of People',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: dateAndTimeController,
              decoration: InputDecoration(
                  labelText: 'Date and Time',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black87;
                  }
                  return Colors.blue.shade500;
                })),
                onPressed: () async {
                  try {
                    await submit(
                        namesController.text.trim(),
                        contactsController.text.trim(),
                        numberOfPeopleController.text.trim(),
                        dateAndTimeController.text.trim());
                    print('Booking Submitted successfully');
                  } catch (error) {
                    print('Booking failed to be submitted');
                  }
                },
                // {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (BuildContext context) {
                //     return const Scaffold(
                //       body: HomePage(),
                //     );
                //   }));
                // },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  Future submit(String names, String contacts, String numberOfPeople,
      String dateAndTime) async {
    await FirebaseFirestore.instance.collection('Users Bookings').add({
      'Names': names,
      'Contacts': contacts,
      'Number of People on Table': numberOfPeople,
      'Date and Time to Arrive': dateAndTime,
    });

    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return const Scaffold(
        body: HomePage(),
      );
    }));
  }
}
