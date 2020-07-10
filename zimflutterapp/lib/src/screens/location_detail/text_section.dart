import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hPadding = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(_hPadding, 15.0, _hPadding, 5.0),
          child: Text(this._title, style: Theme.of(context).textTheme.headline6),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(_hPadding, 2.0, _hPadding, 5.0),
          child: Text(this._body, style: Theme.of(context).textTheme.bodyText1),
        ),
      ],
    );
  }
}
