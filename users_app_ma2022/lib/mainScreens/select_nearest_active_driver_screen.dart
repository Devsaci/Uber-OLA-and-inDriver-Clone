// 69. display online nearest drivers and their information
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:users_app/assistants/assistant_methods.dart';
import 'package:users_app/global/global.dart';

class SelectNearestActiveDriversScreen extends StatefulWidget {
  const SelectNearestActiveDriversScreen({Key? key}) : super(key: key);

  @override
  State<SelectNearestActiveDriversScreen> createState() =>
      _SelectNearestActiveDriversScreenState();
}

class _SelectNearestActiveDriversScreenState
    extends State<SelectNearestActiveDriversScreen> {
  // 72. calculate fare amount from origin to destination on basis of vehicle type
  String fareAmount = "";

  getFareAmountAccordingToVehicleType(int index) {
    if (tripDirectionDetailsInfo != null) {
      if (dList[index]["car_details"]["type"].toString() == "bike") {
        fareAmount =
            (AssistantMethods.calculateFareAmountFromOriginToDestination(
                        tripDirectionDetailsInfo!) /
                    2)
                .toStringAsFixed(1);
      }
      if (dList[index]["car_details"]["type"].toString() == "uber-x") {
        fareAmount =
            (AssistantMethods.calculateFareAmountFromOriginToDestination(
                        tripDirectionDetailsInfo!) *
                    2)
                .toStringAsFixed(1);
      }
      if (dList[index]["car_details"]["type"].toString() == "uber-go") {
        fareAmount =
            (AssistantMethods.calculateFareAmountFromOriginToDestination(
                    tripDirectionDetailsInfo!))
                .toString();
      }
    }
    return fareAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Nearest Online Drivers",
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {
            //delete/remove the ride request from database
            SystemNavigator.pop();
          },
        ),
      ),
      body: ListView.builder(
        itemCount: dList.length,
        itemBuilder: (BuildContext context, int index) {
          // 69. display online nearest drivers and their information
          return Card(
            color: Colors.grey,
            elevation: 3,
            shadowColor: Colors.green,
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Image.asset(
                  "images/" +
                      dList[index]["car_details"]["type"].toString() +
                      ".png",
                  width: 70,
                ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    dList[index]["name"],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    dList[index]["car_details"]["car_model"],
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                  ),
                  SmoothStarRating(
                    rating: 3.5,
                    color: Colors.black,
                    borderColor: Colors.black,
                    allowHalfRating: true,
                    starCount: 5,
                    size: 15,
                  ),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$ " + getFareAmountAccordingToVehicleType(index),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    tripDirectionDetailsInfo != null
                        ? tripDirectionDetailsInfo!.duration_text!
                        : "",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    tripDirectionDetailsInfo != null
                        ? tripDirectionDetailsInfo!.distance_text!
                        : "",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
