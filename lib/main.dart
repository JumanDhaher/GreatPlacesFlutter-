import 'package:flutter/material.dart';
import 'package:great_places/screens/places_details_screen.dart';
import 'package:provider/provider.dart';
import './screens/places_list_screen.dart';
import './providers/great_places_provider.dart';
import './screens/add_place_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceSreen.routeName: (ctx) => AddPlaceSreen(),
          PlaceDetailsScreen.routeName :(ctx) => PlaceDetailsScreen(),
        },
      ),
    );
  }
}
