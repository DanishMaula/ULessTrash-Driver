import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ulesstrash_driver/ui/home/tabbar_home.dart';
import 'package:ulesstrash_driver/ui/profile/profile_screen.dart';

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
    Future.delayed(Duration.zero, (() => showAlert(context)));

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
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfileScreen()));
                            },
                            child: const CircleAvatar(
                              radius: 55,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text('Raeihan Alvaro', style: btnBackToHome),
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

  void showAlert(BuildContext context) {
    showGeneralDialog(
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff101010),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                    child: Column(
                      children: [
                        DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: titleNewOrder,
                            child: const Text(('NEW ORDER'))),
                        const SizedBox(height: 20),
                        DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: dialogClientName,
                            child: const Text(('Rohan Pandia'))),
                        const SizedBox(height: 15),
                        DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: dialogOrderId,
                            child: const Text(('07102001'))),
                        const SizedBox(height: 15),
                        DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: dialogAddress,
                            child: const Text(
                                ('Perumahan Nusa Loka Blok B2 No 2, Jombang, Ciputat, Tangsel'))),
                        const SizedBox(height: 15),
                        DefaultTextStyle(
                            textAlign: TextAlign.center,
                            style: dialogPrice,
                            child: const Text(('\$ 10'))),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color(0xff393939)),
                                ),
                                child: MaterialButton(
                                  height: 45,
                                  color: const Color(0xff161616),
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Text(
                                    'Reject',
                                    style: dialogAccRej,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 45,
                                  color: AppColor.primaryColor,
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Text(
                                    'Accept',
                                    style: dialogAccRej,
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
}
