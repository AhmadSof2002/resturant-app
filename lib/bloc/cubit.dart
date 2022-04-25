import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:resturant_app/bloc/states.dart';

import 'package:resturant_app/screens/location/locationServices.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());

  static AppCubit get(context) => BlocProvider.of(context);

  final Completer<GoogleMapController> controller = Completer();
  Future<void> getMyLocation() async {
    emit(GetCurrentLocationsLoadingState());
    LocationData _myLocation = await LocationService().getLocation();
    _animateCamera(LatLng(_myLocation.latitude!, _myLocation.longitude!))
        .then((value) => emit(GetCurrentLocationsSuccessState()));
  }

  Future<void> _animateCamera(LatLng _location) async {
    final GoogleMapController googleMapController = await controller.future;
    CameraPosition _cameraPosition = CameraPosition(
      target: _location,
      zoom: 13.00,
    );
    print(
        "animating camera to (lat: ${_location.latitude}, long: ${_location.longitude}");
    googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
  }
}
