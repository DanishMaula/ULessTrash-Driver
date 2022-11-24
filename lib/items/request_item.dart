import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ulesstrash_driver/models/request_model.dart';

import '../utils/textstyle.dart';

class RequestItem extends StatelessWidget {
  final RequestModel requestModel;

  const RequestItem({super.key, required this.requestModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 1), // changes position of shadow
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
                        requestModel.numberOrder,
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
                            requestModel.address,
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
                              padding: EdgeInsets.fromLTRB(20, 6, 20, 6),
                              child: Text(
                                requestModel.type,
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
        ],
      ),
    );
  }
}
