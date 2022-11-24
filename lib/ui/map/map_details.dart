import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ulesstrash_driver/utils/color.dart';

import '../../utils/textstyle.dart';

class MapDetails extends StatefulWidget {
  const MapDetails({super.key});

  @override
  State<MapDetails> createState() => MapDetailsState();
}

class MapDetailsState extends State<MapDetails> {
  final Completer<GoogleMapController> _controller = Completer();

  // ignore: prefer_const_constructors
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: const LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/ic_back2.png'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Details',
                style: titleAppbar2,
              ),
            ],
          )),
      body: Stack(
        children: [
          GoogleMap(
            zoomControlsEnabled: false,
            compassEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Wrap(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 18, 10, 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rohan Pandia',
                        style: clientName,
                      ),
                      Text(
                        '07102001',
                        style: idOrderDetail,
                      ),
                      Text(
                        'Perumahan Nusa Loka Blok B2 No 2, Jombang, Ciputat, Tangsel',
                        style: addressDetail,
                      ),
                      Text(
                        '\$10',
                        style: priceDetail,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
          height: 50,
          color: const Color(0xffFAF9F9),
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Accept',
              style: txtAcceptDetails,
            ),
          )),
    );
  }
}
