import 'package:flutter/material.dart';
import 'package:ulesstrash_driver/ui/map/map_details.dart';

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
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MapDetails()));
                  },
                  child: CompleteItem(
                    completeModel: completeModel,
                  ),
                );
              }))
        ],
      ),
    );
  }
}
