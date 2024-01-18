import 'package:flutter/material.dart';
// import 'package:secondproject/RestoBar/landing.dart';
import 'package:secondproject/RestoBar/booking.dart';
import 'package:secondproject/RestoBar/allpub.dart';

class PubPage extends StatelessWidget {
  const PubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Jo Pub&Resto'),
        //   actions: [
        //     IconButton(
        //         onPressed: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (BuildContext context) {
        //             return const Scaffold(body: LandingPage());
        //           }));
        //         },
        //         icon: const Icon(Icons.perm_identity))
        //   ],
        // ),
        body: Expanded(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade400,
                  ),
                  padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                  child: const Text(
                    'Bar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const AllPub(Image(
                    height: 220,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1283219/pexels-photo-1283219.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                const AllPub(Image(
                    height: 230,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/63633/bar-local-cong-ireland-63633.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                const AllPub(Image(
                    height: 220,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/340996/pexels-photo-340996.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                const AllPub(Image(
                    height: 190,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1267351/pexels-photo-1267351.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                const AllPub(Image(
                    height: 220,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1283219/pexels-photo-1283219.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                const AllPub(Image(
                    height: 220,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1283219/pexels-photo-1283219.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                const AllPub(Image(
                    height: 220,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1267315/pexels-photo-1267315.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                const AllPub(Image(
                    height: 190,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                const Divider(),
                TextButton(
                    style: ButtonStyle(backgroundColor:
                        MaterialStateColor.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.black87;
                      } else if (states.contains(MaterialState.hovered)) {
                        return Colors.black54;
                      }
                      return Colors.blue.shade700;
                    })),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Scaffold(
                          body: BookingPage(),
                        );
                      }));
                    },
                    child: const Text(
                      'Book a Table',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
