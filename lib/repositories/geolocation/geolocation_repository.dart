import 'package:geolocator/geolocator.dart';
import 'package:resturant_app/repositories/geolocation/base_geolocation_repository.dart';

class GeoLocationRepository extends BaseGeolocationRepository {
  GeoLocationRepository();

  @override
  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
