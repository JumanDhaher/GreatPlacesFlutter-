import 'package:http/http.dart' as http;
import 'dart:convert';

const GOOGLE_API_KEY = 'AIzaSyC9DulRKkfv2h_L9QOrsLANUbFxuOaEbN8';

class LocationHelper {
  static String generateLocationPreviewImage({
    double latitude,
    double longitude,
  }) {
    return 'https://www.google.com/maps/d/u/0/viewer?ie=UTF8&t=k&om=1&source=embed&oe=UTF8&msa=0&mid=1Dt0DAlVYal47pNOXy20K08p3qpE&ll=24.691846000000012%2C46.68552199999999&z=17';
   // return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlacesAddress(double lat, double lng) async {
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY';
    final response = await http.get(url);
  //  print(json.decode(response.body)['results'][0]['formatted_address']);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
