//49. Convert, Add json Response Data to List - Display Places Predictions on ListView

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_app/infoHandler/app_info.dart';
import 'package:users_app/widgets/progress_dialog.dart';

import '../assistants/request_assistant.dart';
import '../global/map_key.dart';
import '../models/directions.dart';
import '../models/predicted_places.dart';

class PlacePredictionTileDesign extends StatelessWidget {
  final PredictedPlaces? predictedPlaces;

  PlacePredictionTileDesign({this.predictedPlaces});

  getPlaceDirectionDetails(String? placeId, context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) => ProgressDialog(
              message: "Setting Up Drof-Off, Please wait...",
            ));
    String placeDirectionDetailsUrl =
        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$mapKey";
    var responseApi =
        await RequestAssistant.receiveRequest(placeDirectionDetailsUrl);
    //52. update and display drop-off location using provider state management
    Navigator.pop(context);
    if (responseApi == "Error Occurred, Failed. No Response.") {
      return;
    }
    if (responseApi["status"] == "OK") {
      Directions direction = Directions();
      direction.locationName = responseApi["result"]["name"];
      direction.locationId = placeId;
      direction.locationLatitude =
          responseApi["result"]["geometry"]["location"]["lat"];
      direction.locationLongitude =
          responseApi["result"]["geometry"]["location"]["lng"];
      Provider.of<AppInfo>(context, listen: false)
          .updateDropOffLocationAddress(direction);
      Navigator.pop(context, "obtainedDropoff");

      //print('///////////////////////////////////////////////////');
      // print('\nlocationName = ' + direction.locationName!);
      // print('\nlocationLatitude = ' + direction.locationLatitude!.toString());
      // print('\nlocationLongitude = ' + direction.locationLongitude!.toString());
      //print('///////////////////////////////////////////////////');

    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //51. get lat & lng for drop-off location using placeId
        getPlaceDirectionDetails(predictedPlaces!.place_id, context);
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white24,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            const Icon(
              Icons.add_location,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 14.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    predictedPlaces!.main_text!,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white54,
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    predictedPlaces!.secondary_text!,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.white54,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
