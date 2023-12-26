import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/login.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Container(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Jo Pub&Resto',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 90),
                const Text(
                  'WELCOME!!!!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 60),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue.shade400;
                    }
                    return Colors.blue.shade900;
                  })),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Scaffold(
                        body: LoginPage1(),
                      );
                    }));
                  },
                  child: const Text(
                    'GET STARTED',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                )
              ],
            )));
  }
}
