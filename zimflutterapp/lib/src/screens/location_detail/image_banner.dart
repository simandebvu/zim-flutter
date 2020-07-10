import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _imagePath;

  ImageBanner(this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      child: Image.asset(this._imagePath, fit: BoxFit.cover),
    );
  }
}
