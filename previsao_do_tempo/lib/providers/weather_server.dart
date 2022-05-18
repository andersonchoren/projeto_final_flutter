import 'package:dio/dio.dart';
import 'package:location/location.dart';

Future getData() async {
  var location = new Location();
  var userLocation = await location.getLocation();
  var lat = userLocation.latitude;
  var long = userLocation.longitude;
  var result = await Dio()
      .get("https://api.hgbrasil.com/weather?key=30dd1d06&lat=${lat}&lon=${long}&user_ip=remote");
  return result.data;
}
