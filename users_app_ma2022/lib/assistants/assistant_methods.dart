//30. Read and Display Current Online user info from Database
import 'package:firebase_database/firebase_database.dart';
import 'package:geolocator/geolocator.dart';
import 'package:users_app/global/global.dart';
import 'package:users_app/models/user_model.dart';

import '../global/map_key.dart';

class AssistantMethods {
  static Future<String?> searchAddressForGeographicCoOrdinates(
      Position position) async {
    "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapKey";
    String humanReadableAddress="";

  }

  static void readCurrentOnlineUserInfo() {
    currentFirebaseUser = fAuth.currentUser;
    DatabaseReference userRef = FirebaseDatabase.instance
        .ref()
        .child("users")
        .child(currentFirebaseUser!.uid);

    userRef.once().then((snap) {
      if (snap.snapshot.value != null) {
        userModelCurrentInfo = UserModel.fromSnapshot(snap.snapshot);
        // For Testing methode AssistantMethods
        print("******** name   =  " + userModelCurrentInfo!.name.toString());
        print("******** email  =  " + userModelCurrentInfo!.email.toString());
        print("******** phone  =  " + userModelCurrentInfo!.phone.toString());
        //31. Navigation Drawer - Drawer Header
      }
    });
  }
}
