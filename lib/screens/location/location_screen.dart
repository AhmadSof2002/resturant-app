import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:resturant_app/bloc/cubit.dart';
import 'package:resturant_app/bloc/states.dart';
import 'package:resturant_app/screens/location/locationServices.dart';
import 'package:resturant_app/widgets/LocationSearchBox.dart';
import 'package:resturant_app/widgets/gmap.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);
  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => LocationScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(33.515343, 36.289590),
    zoom: 14.4746,
  );

  LatLng currentLocation = _initialCameraPosition.target;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: GoogleMap(
                  onCameraMove: (position) {
                    setState(() {
                      currentLocation = position.target;
                    });
                  },
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  initialCameraPosition: _initialCameraPosition,
                  onMapCreated: (controller) async {
                    // String style = await DefaultAssetBundle.of(context)
                    //     .loadString('assets/map_style.json');
                    // //customize your map style at: https://mapstyle.withgoogle.com/
                    // controller.setMapStyle(style);
                    cubit.controller.complete(controller);
                  },
                ),
              ),
              Positioned(
                  top: 40,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/logo.svg',
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: LocationSearchBox(
                        onPressed: () {
                          Navigator.pushNamed(context, '/search');
                        },
                      )),
                    ],
                  )),
              Positioned(
                  bottom: 50,
                  left: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Save'),
                      style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor),
                    ),
                  )),
              Positioned(
                bottom: 2,
                left: 12,
                right: 350,
                child: InkWell(
                  onTap: () => cubit.getMyLocation(),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor),
                    child: Icon(
                      Icons.gps_fixed,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            height: 20,
            alignment: Alignment.center,
            child: Text(
                "lat: ${currentLocation.latitude}, long: ${currentLocation.longitude}"),
          ),
        );
      },
    );
  }
}
