import 'package:flutter/material.dart';
import 'package:secondproject/first.dart';
import 'locations_list.dart';
import 'package:secondproject/RestoBar/landing.dart';

const locationsRoute = '/';
const locationDetailRoute = '/location';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: _routes(),
        theme: ThemeData(primaryColor: Colors.black),
        home: Builder(builder: (BuildContext context) {
          return Scaffold(
            // appBar: AppBar(
            //   title: const Text(
            //     'My First Flutter App',
            //     style: TextStyle(
            //         fontSize: 25.0,
            //         color: Colors.blue,
            //         fontWeight: FontWeight.w800),
            //   ),
            //   actions: <Widget>[
            //     IconButton(
            //       icon: const Icon(Icons.add_alert),
            //       tooltip: 'Show Snckbar',
            //       onPressed: () {
            //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            //           content: Text('This is my first snackbar'),
            //           duration: Duration(seconds: 5),
            //         ));
            //       },
            //     ),

            //     // Other page
            //   ],
            //   backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            // ),
            backgroundColor: const Color.fromARGB(255, 15, 15, 16),
            body: const Center(
                child: Text(
              'Hello Jeph, This is my first App',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.green,
              ),
            )),
            floatingActionButton: IconButton(
              padding: const EdgeInsets.fromLTRB(50, 0, 130, 210),
              iconSize: 100,
              icon: const Icon(Icons.navigate_next),
              tooltip: 'going to the other page',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Scaffold(
                    // appBar: AppBar(
                    //   title: const Text('This is the next page'),
                    // ),
                    body: LandingPage(),
                    // body: const Center(
                    //   child: Text(
                    //     'This is the next page for reallll',
                    //     style: TextStyle(fontSize: 25),
                    //   ),
                    // ),
                  );
                }));
              },
            ),
          );
        }));
  }

  // this is for handling the routes navigations to our App
  // it takes the given routes and assigns to their screens accordingly

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic>? arguments =
          settings.arguments as Map<String, dynamic>?;
      Widget screen;
      switch (settings.name) {
        case locationsRoute:
          screen = const Locations();
          break;
        case locationDetailRoute:
          screen = FirstApp(arguments?['id']);
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
