import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/createAccount.dart';
import 'package:secondproject/RestoBar/home.dart';
// import 'package:secondproject/RestoBar/signup.dart';
import 'package:secondproject/firebase_auth_implementation/firebase_authServices.dart';

class LoginPage1 extends StatefulWidget {
  final TextEditingController? controller;

  const LoginPage1({this.controller, Key? key}) : super(key: key);

  @override
  CreateLoginState createState() => CreateLoginState();
}

class CreateLoginState extends State<LoginPage1> {
  final FirebaseAuthService auth = FirebaseAuthService();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Jo Pub&Resto')),
        body: Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/loginSvg.png',
            height: 120,
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Login',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
            keyboardType: TextInputType.visiblePassword,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Scaffold(
                    body: CreateAccount(),
                  );
                }));
              },
              child: const Text(
                'forgot password?',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.green),
              )),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.blue.shade700;
                }
                return Colors.blue.shade500;
              })),
              onPressed: signIn,
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

  void signIn() async {
    String email = emailController.text;
    String password = passwordController.text;
    User? user = await auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const Scaffold(body: HomePage());
      }));
    } else {
      print('Not known');
    }
  }
}
