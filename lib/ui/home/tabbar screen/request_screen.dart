import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ulesstrash_driver/models/request_model.dart';
import 'package:ulesstrash_driver/ui/map/map_accept.dart';

import '../../../items/request_item.dart';

class RequestScreen extends StatelessWidget {
  bool isSwitched;
   RequestScreen({super.key, this.isSwitched = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: requestList.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                final RequestModel requestModel = requestList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MapSample(isSwitched: isSwitched,)));
                  },
                  child: RequestItem(
                    requestModel: requestModel,
                  ),
                );
              }))
        ],
      ),
    );
  }
}
