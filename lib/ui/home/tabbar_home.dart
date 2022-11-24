import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:ulesstrash_driver/ui/home/tabbar%20screen/all_screen.dart';
import 'package:ulesstrash_driver/ui/home/tabbar%20screen/complete_screen.dart';
import 'package:ulesstrash_driver/ui/home/tabbar%20screen/handling_screen.dart';
import 'package:ulesstrash_driver/ui/home/tabbar%20screen/request_screen.dart';
import 'package:ulesstrash_driver/utils/textstyle.dart';

import '../../utils/color.dart';

class TabBarMenu extends StatefulWidget {
  TabBarMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TabBarMenuState createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  //tab bar menu
  final List<Tab> myTab = <Tab>[
    Tab(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: AppColor.tabbarUnclick,
            )),
        child: Align(
          alignment: Alignment.center,
          child: Text("All"),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: AppColor.tabbarUnclick,
            )),
        child: Align(
          alignment: Alignment.center,
          child: Text("Request"),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: AppColor.tabbarUnclick,
            )),
        child: Align(
          alignment: Alignment.center,
          child: Text("Handling"),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: AppColor.tabbarUnclick,
            )),
        child: Align(
          alignment: Alignment.center,
          child: Text("Complete"),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          TabBar(
            onTap: ((value) {
              setState(() {
                _tabController.index = value;
              });
            }),
            controller: _tabController,
            tabs: myTab,
            labelColor: Colors.white,
            unselectedLabelColor: const Color(0xffE5E5E5),
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: labelStyle,
            unselectedLabelStyle: unselectedLabelStyle,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff2D8D7B)),
            isScrollable: true,
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const AllScreen(),
                const RequestScreen(),
                const HandlingScreen(),
                const CompleteScreen()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
