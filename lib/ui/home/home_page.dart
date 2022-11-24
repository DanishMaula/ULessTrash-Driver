import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ulesstrash_driver/ui/home/tabbar_home.dart';

import '../../utils/color.dart';
import '../../utils/textstyle.dart';
import '../top up/select_rekening.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Wrap(
              children: [
                Container(
                  width: double.infinity,
                  color: AppColor.primaryColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SelectRekening()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff000000),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Top Up +',
                                        style: btnTopUp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // add switch
                            FlutterSwitch(
                              toggleSize: 15,
                              height: 30,
                              activeToggleColor: const Color(0xff00F4A8),
                              padding: 5,
                              activeColor: const Color(0xff000000),
                              inactiveColor: const Color(0xff000000),
                              showOnOff: true,
                              activeTextColor: Colors.white,
                              inactiveTextColor: const Color(0xffFF3D00),
                              value: isSwitched,
                              onToggle: (val) {
                                setState(() {
                                  isSwitched = val;
                                });
                              },
                            ),
                          ],
                        ),
                        const Center(
                          child: CircleAvatar(
                            radius: 55,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1526800544336-d04f0cbfd700?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZXxlbnwwfDB8MHx8&auto=format&fit=crop&w=500&q=60'),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text('Driver Name', style: btnBackToHome),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(text: 'Balance', style: txtBalance),
                              TextSpan(text: ': 123456789', style: amountBal),
                            ])),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    TabBarMenu(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
