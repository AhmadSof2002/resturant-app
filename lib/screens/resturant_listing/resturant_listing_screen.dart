import 'package:flutter/material.dart';

class ResturantListingScreen extends StatelessWidget {
  const ResturantListingScreen({Key? key}) : super(key: key);

  static const String routeName = '/resturantt-listing';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => ResturantListingScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ResturantListing'),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
          child: Text('Location Screen')),
    );
  }
}
