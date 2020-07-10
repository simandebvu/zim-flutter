import 'package:flutter/material.dart';
import 'package:zimflutterapp/src/widgets/image_banner.dart';
import '../../models/location.dart';
import '../../app.dart';
import 'tile_overlay.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, locations[index]),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      child: Container(
        child: Stack(
          children: <Widget>[
            ImageBanner(imagePath: location.imagePath, height: 245.0),
            TileOverlay(location)
          ],
        ),
        height: 245.0,

        ),
      onTap: () => _onLocationTap(context, location.id),
    );
  }
}
