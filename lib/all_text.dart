import 'dart:ui';

import 'package:flutter/material.dart';

class AllTexts extends StatelessWidget {
  final _title;
  final _body;
  final _author;

  AllTexts(this._title, this._author, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(70, 10, 20, 5),
          child: Text(_title,
              style: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.green,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(70, 2, 9, 5),
          child: Text(_author,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.red,
              )),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
          child: Text(
            _body,
            style: const TextStyle(fontSize: 20.0),
          ),
        )
      ],
    );
  }
}
