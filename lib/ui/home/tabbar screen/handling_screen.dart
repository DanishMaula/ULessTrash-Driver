import 'package:flutter/material.dart';

import '../../../items/handling_item.dart';
import '../../../models/Handling_model.dart';

class HandlingScreen extends StatelessWidget {
  const HandlingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: handlingList.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                final HandlingModel handlingModel = handlingList[index];
                return HandlingItem(
                  handlingModel: handlingModel,
                );
              }))
        ],
      ),
    );
  }
}
