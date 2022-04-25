import 'package:flutter/material.dart';

class DeliveryTimeScreen extends StatelessWidget {
  const DeliveryTimeScreen({Key? key}) : super(key: key);

  static const String routeName = '/delivery-time';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => DeliveryTimeScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliveryTime'),
      ),
      body: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
          child: Text('Location Screen')),
    );
  }
}
