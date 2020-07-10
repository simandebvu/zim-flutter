import 'package:zimflutterapp/src/models/location.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test ("Locations can be fetched.", (){
    final locations = Location.fetchAll();
    expect(locations.length, greaterThan());
  });

  test("Locations can be fetched by ID", (){
    final locations = Location.fetchAll();
    for (Location i in locations){
      final curLocation = Location.fetchByID(i.id);
      expect(curLocation, isNotNull);
      expect(curLocation.id, equals(i.id));
    }
  });
}