import 'package:flutter/material.dart';

import '../../../items/Complete_item.dart';
import '../../../models/Handling_model.dart';
import '../../../models/complete_model.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: completeList.length,
              shrinkWrap: true,
              itemBuilder: ((cntext, index) {
                final CompleteModel completeModel = completeList[index];
                return CompleteItem(
                  completeModel: completeModel,
                );
              }))
        ],
      ),
    );
  }
}
