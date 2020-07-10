import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ImageBanner("assets/images/vicfalls.jpg"),
        TextSection("My Title", "khdskjhfdkjzxhvkjhskjdhvzxkv"),
        TextSection("My Title2", "khdskjhfdkjzxhvkjhskjdhvzxkv"),
        TextSection("My Title3", "khdskjhfdkjzxhvkjhskjdhvzxkv"),
      ],
    );
  }
}