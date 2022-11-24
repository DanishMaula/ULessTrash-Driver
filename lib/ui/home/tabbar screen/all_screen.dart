import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:ulesstrash_driver/ui/map/map_accept.dart';
import 'package:ulesstrash_driver/utils/textstyle.dart';

import '../../map/map_details.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            // request
            Wrap(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapSample()));
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 22, 20, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('ID ORDER:', style: idOrder),
                              Text(
                                ' 07102001',
                                style: idAddress,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text('ADDRESS:', style: idOrder),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel',
                                    style: idAddress,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Wrap(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color(0xffFFD833),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 6, 20, 6),
                                      child: Text('Request', style: txtBalance),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapDetails()));
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 22, 20, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('ID ORDER:', style: idOrder),
                              Text(' 07102001', style: idAddress),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'ADDRESS:',
                                style: idOrder,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel',
                                    style: idAddress,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Wrap(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color(0xff2F80ED),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 6, 20, 6),
                                      child:
                                          Text('Handling', style: txtBalance),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapDetails()));
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 22, 20, 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'ID ORDER:',
                                style: idOrder,
                              ),
                              Text(' 07102001', style: idAddress),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'ADDRESS:',
                                style: idOrder,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Perumahan Nusa Loka Blok B2 No 2, \nJombang, Ciputat, Tangsel',
                                    style: idAddress,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Wrap(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color(0xff219653),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 6, 20, 6),
                                      child: Text(
                                        'Complete',
                                        style: txtBalance,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
