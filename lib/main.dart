import 'package:flutter/material.dart';
import 'first.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        home: Builder(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'My First Flutter App',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w800),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Show Snckbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('This is my first snackbar'),
                      duration: Duration(seconds: 5),
                    ));
                  },
                ),

                // Other page

                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'going to the other page',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Scaffold(
                        // appBar: AppBar(
                        //   title: const Text('This is the next page'),
                        // ),
                        body: FirstApp(),
                        // body: const Center(
                        //   child: Text(
                        //     'This is the next page for reallll',
                        //     style: TextStyle(fontSize: 25),
                        //   ),
                        // ),
                      );
                    }));
                  },
                )
              ],
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            backgroundColor: const Color.fromARGB(255, 15, 15, 16),
            body: const Center(
                child: Text(
              'Hello Jeph, This is my first App',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.green,
              ),
            )),
          );
        }));
  }
}
