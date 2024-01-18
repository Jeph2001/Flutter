import 'package:flutter/material.dart';
import 'package:secondproject/RestoBar/booking.dart';

class AllPub extends StatelessWidget {
  final imagee;

  const AllPub(this.imagee, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const BookingPage();
              }));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: imagee,
            )),
        const SizedBox(
          width: 10,
        ),
        // const Text(
        //   ' Miygduywfewfe\nbyufcutcfwc\n mytuyguyudfw\n utewrwutwfvc\n wftfwufuwqc',
        //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        // ),
      ],
    );
  }
}
