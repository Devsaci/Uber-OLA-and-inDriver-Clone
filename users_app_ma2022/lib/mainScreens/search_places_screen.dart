import 'package:flutter/material.dart';

import '../assistants/request_assistant.dart';
import '../global/map_key.dart';
import '../models/predicted_places.dart';
import '../widgets/place_prediction_tile.dart';

class SearchPlacesScreen extends StatefulWidget {
  const SearchPlacesScreen({Key? key}) : super(key: key);

  @override
  State<SearchPlacesScreen> createState() => _SearchPlacesScreenState();
}

class _SearchPlacesScreenState extends State<SearchPlacesScreen> {
  // 48. Enable Places API [Auto Complete Place Search]
  List<PredictedPlaces> placesPredictedList = [];

  void findPlaceAutoCompleteSearch(String inputText) async {
    if (inputText.length > 1) {
      String urlAutoCompleteSearch =
          "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$inputText&key=$mapKey&components=country:FR";
      var responseAutoCompleteSearch =
          await RequestAssistant.receiveRequest(urlAutoCompleteSearch);
      if (responseAutoCompleteSearch ==
          "Error Occurred, Failed. No Response.") {
        return;
      }
      print("this is response  / result");
      print(responseAutoCompleteSearch);
      if (responseAutoCompleteSearch["status"] == "OK") {
        var placePredictions = responseAutoCompleteSearch["predictions"];
        var placePredictionsList = (placePredictions as List)
            .map((jsonData) => PredictedPlaces.fromJson(jsonData))
            .toList();
        setState(() {
          placesPredictedList = placePredictionsList;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          //search place ui
          Container(
            height: 160,
            decoration: const BoxDecoration(
              color: Colors.black54,
              boxShadow: [
                BoxShadow(
                  color: Colors.white54,
                  blurRadius: 8,
                  spreadRadius: 0.5,
                  offset: Offset(
                    0.7,
                    0.7,
                  ),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 30.0),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.amber,
                        ),
                      ),
                      const Center(
                        child: Text(
                          "Search & Set DropOff Location",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.adjust_sharp,
                        color: Colors.amber,
                        size: 30.0,
                      ),
                      const SizedBox(width: 18.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            onChanged: (valueTyped) {
                              findPlaceAutoCompleteSearch(valueTyped);
                            },
                            decoration: const InputDecoration(
                              hintText: "search here...",
                              fillColor: Colors.white54,
                              filled: true,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                left: 11.0,
                                top: 8.0,
                                bottom: 8.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //display place predictions result
          (placesPredictedList.length > 0)
              ? Expanded(
                  child: ListView.separated(
                    itemCount: placesPredictedList.length,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return PlacePredictionTileDesign(
                        predictedPlaces: placesPredictedList[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        height: 1,
                        color: Colors.white,
                        thickness: 1,
                      );
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
