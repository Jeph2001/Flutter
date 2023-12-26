import 'package:flutter/material.dart';
import 'aboutMe.dart';

class LoginPage extends StatelessWidget {
  // final TextStyle myLabelStyle = Theme.of(context).textTheme.bodyText1
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      // appBar: AppBar(title: const Text('')),
      body: LoginPagee(),
    );
  }
}

class LoginPagee extends StatelessWidget {
  const LoginPagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(padding: EdgeInsets.only(top: 100)),
            const Image(
                height: 200,
                image: NetworkImage(
                    'https://media.licdn.com/dms/image/C4D1BAQEqv_efZjJcqw/company-background_10000/0/1583341278510/visitrwanda_cover?e=2147483647&v=beta&t=_-xwLSirNChlhJA-4i6pXSHkyYdCpzVUX1z4FMstXwQ')),
            const SizedBox(height: 30),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle:
                    const TextStyle(color: Color.fromARGB(247, 0, 0, 0)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle:
                    const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 20),
            TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(255, 43, 158, 5)),
                  fixedSize: MaterialStatePropertyAll(Size(50, 60))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Scaffold(
                    body: AboutMe(),
                  );
                }));
              },
              child: const Text(
                'Login',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            )
          ],
        ),
      )),
    );
  }
}
