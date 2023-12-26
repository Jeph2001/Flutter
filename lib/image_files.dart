import 'package:flutter/material.dart';

class ImageFiles extends StatelessWidget {
  final String _assetPath;

  const ImageFiles(this._assetPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 280.0,
      ),
      decoration: const BoxDecoration(color: Colors.grey),
      child: Image.asset(_assetPath, fit: BoxFit.cover),
    );
  }
}
