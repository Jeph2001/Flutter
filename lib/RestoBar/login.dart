import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/home.dart';
import 'package:secondproject/RestoBar/signup.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Jo Pub&Resto')),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  TextButton(
                      style: ButtonStyle(backgroundColor:
                          MaterialStateColor.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.black;
                        }
                        return Colors.blue.shade500;
                      })),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const Scaffold(body: LoginPage1());
                        }));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      )),
                  const SizedBox(
                    width: 120,
                  ),
                  TextButton(
                      style: ButtonStyle(backgroundColor:
                          MaterialStateColor.resolveWith((states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.blue.shade900;
                        }
                        return Colors.blue.shade300;
                      })),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const Scaffold(
                            body: SignUpPage(),
                          );
                        }));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ))
                ],
              ),
              const SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.visiblePassword,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'forgot password?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  )),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.blue.shade700;
                    }
                    return Colors.blue.shade500;
                  })),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Scaffold(body: HomePage());
                    }));
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ));
  }
}
