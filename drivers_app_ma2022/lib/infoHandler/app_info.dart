import 'package:drivers_app/models/directions.dart';
import 'package:flutter/cupertino.dart';


class AppInfo extends ChangeNotifier
{
  Directions? userPickUpLocation, userDropOffLocation;


  void updatePickUpLocationAddress(Directions userPickUpAddress)
  {
    userPickUpLocation = userPickUpAddress;
    notifyListeners();
  }

  void updateDropOffLocationAddress(Directions dropOffAddress)
  {
    userDropOffLocation = dropOffAddress;
    notifyListeners();
  }

}