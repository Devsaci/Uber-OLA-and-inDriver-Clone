// 44. update user PickUp Location Address with Provider State Management - part 1
import 'package:flutter/cupertino.dart';
import 'package:users_app/models/directions.dart';

class AppInfo extends ChangeNotifier {
  Directions? userPickUpLocation;

  void updatePickUpLocationAddress(Directions userPickUpAddress, context)
  {
    userPickUpLocation = userPickUpAddress;
    notifyListeners();
  }
}
