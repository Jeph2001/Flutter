import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/home.dart';
import 'package:secondproject/RestoBar/login.dart';
import 'package:secondproject/firebase_auth_implementation/firebase_authServices.dart';
// import 'package:secondproject/login_page.dart';

class CreateAccount extends StatefulWidget {
  final TextEditingController? controller;

  const CreateAccount({this.controller, Key? key}) : super(key: key);

  @override
  CreateAccountState createState() => CreateAccountState();
}

class CreateAccountState extends State<CreateAccount> {
  final FirebaseAuthService auth = FirebaseAuthService();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Create Account',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 10),
          // TextFormField(
          //     controller: usernameController,
          //     decoration: InputDecoration(
          //         labelText: 'Username',
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(15)))),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)))),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)))),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.blue.shade400;
                }
                return Colors.blue.shade600;
              })),
              onPressed: signup,
              child: const Text(
                'Save',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              )),
          TextButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const LoginPage1();
              }));
            },
            icon: const Icon(Icons.navigate_before),
            label: const Text('Back'),
          )
        ],
      ),
    );
  }

  void signup() async {
    // String username = usernameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print('User created successfully');
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const Scaffold(
          body: HomePage(),
        );
      }));
    }
  }
}
