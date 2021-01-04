import 'package:geolocator/geolocator.dart';

// VERY IMPORTANT NOTE:
// The current Geolocator package used here uses deprecated API
// in its other package dependencies. This version was only used
// to conform with the project requirements and configurations.

// The updated package does not change the location but only sets it
// to the default location for the Android Emulator: Mountain View...
// Still searching for a work-around for the updated package.

class Location {
  double latitude;
  double longitude;

  //NOTE to self: You can return Future<void> wow
  /// Gets the current location coordinates of the device
  /// when permitted.
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
