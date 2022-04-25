// import 'package:flutter/material.dart';
// import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';

// import 'package:google_maps_webservice/places.dart';

// import 'dart:async';

// import 'package:google_places_flutter/model/prediction.dart';
// import 'package:resturant_app/repositories/geolocation/geolocation_repository.dart';

// class SearchScreen extends StatefulWidget {
//   SearchScreen({Key? key}) : super(key: key);

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
//   static const String routeName = '/search';

//   static Route route() {
//     return MaterialPageRoute(
//         builder: (_) => SearchScreen(),
//         settings: RouteSettings(name: routeName));
//   }
// }

// class _SearchScreenState extends State<SearchScreen> {
//   static const kGoogleApiKey = "AIzaSyCV5btHgRO2wNeRqwEuIWZDMCc06pPEyYs";
//   GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             alignment: Alignment.center,
//             child: RaisedButton(
//               onPressed: () async {
//                 // show input autocomplete with selected mode
//                 // then get the Prediction selected
//                 var p = await PlacesAutocomplete.show(
//                     context: context,
//                     apiKey: 'AIzaSyCV5btHgRO2wNeRqwEuIWZDMCc06pPEyYs');
//                 displayPrediction(p!);
//               },
//               child: Text('Find address'),
//             )));
//   }

//   Future<Null> displayPrediction(dynamic p) async {
//     if (p != null) {
//       PlacesDetailsResponse detail =
//           await _places.getDetailsByPlaceId(p.placeId);

//       var placeId = p.placeId;
//       double lat = detail.result.geometry!.location.lat;
//       double lng = detail.result.geometry!.location.lng;

//       var address = await GeoLocationRepository.local.findAddressesFromQuery(p.description);

//       print(lat);
//       print(lng);
//     }
//   }
// }
