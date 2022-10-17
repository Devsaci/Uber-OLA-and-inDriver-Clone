// 64. QueryAtLocation [Handle GeoFire CallBacks, onKeyEntered onKeyExited onKeyMoved]
import '../models/active_nearby_available_drivers.dart';

class GeoFireAssistant {
  static List<ActiveNearbyAvailableDrivers> activeNearbyAvailableDriversList = [];

  //whenever any driver become non-active/offline
  static void deleteOfflineDriverFromList(String driverId){
    activeNearbyAvailableDriversList.indexWhere((element) => false);
  }
}
