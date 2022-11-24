import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapSample extends StatefulWidget {
  final String text;
  const MapSample({super.key, required this.text});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
 

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.173110, 106.829361),
    zoom: 14.4746,
  );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(-6.178763, 107.065758),
  //     tilt: 59.440717697143555,
  //     zoom: 25.151926040649414);jj

  static const CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(-6.173110, 106.829361), zoom: 14.4746);

  @override
  Widget build(BuildContext context) {
    

    // send data to filter page
    // void sendData(context) {
    //   String textToSend = 'miqdad';

    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => FilterPage(
    //               text: textToSend,
    //             )),
    //   );
    // }

    return SafeArea(
      child: Scaffold(
        // Bottom Navigation Bar
        bottomNavigationBar:  BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            print(index);
          },
        ),
        body:  GoogleMap(
              // myLocationEnabled: true,
              zoomControlsEnabled: false,
              mapType: MapType.terrain,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          
            // make to middle of the map
           
         
      ),
    );
  }

  // get current location
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (serviceEnabled == false) {
      return Future.error('Location services are disabled.');
    } else {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
      return await Geolocator.getCurrentPosition();
    }
  }
}
