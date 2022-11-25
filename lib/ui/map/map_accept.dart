import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ulesstrash_driver/utils/color.dart';

import '../../utils/textstyle.dart';
import '../home/home_page.dart';

class MapSample extends StatefulWidget {
  bool isSwitched;
  MapSample({super.key, this.isSwitched = true});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
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
          color: const Color(0xff2D8D7B),
          child: MaterialButton(
            onPressed: () {
              if (widget.isSwitched == true) {
                confirmDialog(context);
              } else {
                dialogBackOnline(context);
              }
            },
            child: Text(
              'Accept',
              style: txtNextRefunds,
            ),
          )),
    );
  }

  Future<Object?> confirmDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 500),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Wrap(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 12, right: 12),
                  decoration: const BoxDecoration(
                    color: Color(0xff101010),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 20),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/ic_warn.png',
                          width: 40,
                          height: 35,
                        ),
                        const SizedBox(height: 10),
                        DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: txtBalance,
                            child: const Text(
                                ('The decisions you make cannot be undone'))),
                        const SizedBox(height: 40),
                        DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: dialogAddress,
                            child: const Text(('Are You Sure?'))),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: MaterialButton(
                                  height: 30,
                                  color: const Color(0xff161616),
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Text(
                                    'No',
                                    style: dialogCnfrmNo,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: MaterialButton(
                                  height: 30,
                                  color: AppColor.primaryColor,
                                  onPressed: (() {
                                    Navigator.pop(context);
                                    successDialog(context);
                                  }),
                                  child: Text(
                                    'Yes',
                                    style: dialogCnfrmYes,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }

  Future<Object?> successDialog(BuildContext context) => showGeneralDialog(
        barrierLabel: "Label",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: const Duration(milliseconds: 500),
        context: context,
        pageBuilder: (context, anim1, anim2) {
          return Align(
            alignment: Alignment.center,
            child: Wrap(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    decoration: const BoxDecoration(
                      color: Color(0xff101010),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 10, 12, 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/ic_success.png',
                            width: 40,
                            height: 62,
                          ),
                          const SizedBox(height: 10),
                          DefaultTextStyle(
                              textAlign: TextAlign.center,
                              style: txtNextRefunds,
                              child: const Text(
                                  ('Wow, Congratulations, Your Order Has Been Successfully Taken '))),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: MaterialButton(
                              height: 30,
                              color: const Color(0xff2D8D7B),
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }),
                              child: Text(
                                'Back To Home',
                                style: forgotPassword,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          );
        },
      );
}

Future<Object?> dialogBackOnline(BuildContext context) {
  return showGeneralDialog(
    barrierLabel: "Label",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 500),
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Align(
        alignment: Alignment.center,
        child: Wrap(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 12, right: 12),
                decoration: const BoxDecoration(
                  color: Color(0xff101010),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/ic_warn.png',
                        width: 40,
                        height: 35,
                      ),
                      const SizedBox(height: 10),
                      DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: txtBalance,
                          child: const Text(
                              ('You are currently offline, if you want to take orders you have to go online first'))),
                      const SizedBox(height: 40),
                      DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: dialogAddress,
                          child: const Text(('Do you want to go online?'))),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: MaterialButton(
                                height: 30,
                                color: const Color(0xff161616),
                                onPressed: (() {
                                  Navigator.pop(context);
                                }),
                                child: Text(
                                  'No',
                                  style: dialogCnfrmNo,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: MaterialButton(
                                height: 30,
                                color: AppColor.primaryColor,
                                onPressed: (() {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }));
                                }),
                                child: Text(
                                  'Yes',
                                  style: dialogCnfrmYes,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      );
    },
  );
}
