import 'package:flutter/material.dart';

import '../models/complete_model.dart';
import '../utils/textstyle.dart';

class CompleteItem extends StatelessWidget {
  final CompleteModel completeModel;

  const CompleteItem({super.key, required this.completeModel});

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
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        completeModel.numberOrder,
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
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            completeModel.address,
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
                              color: const Color(0xff2D8D7B),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                              child: Text(
                                completeModel.type,
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
