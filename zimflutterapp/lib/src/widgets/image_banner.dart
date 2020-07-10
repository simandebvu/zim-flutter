import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imagePath;
  final double height;

  ImageBanner({@required this.imagePath, this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      constraints: BoxConstraints.expand(
        height: height,
      ),
      child: Image.asset(this.imagePath, fit: BoxFit.cover),
    );
  }
}
