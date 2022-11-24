import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:ulesstrash_driver/ui/top%20up/withdrawal_finished.dart';
import '../../utils/textstyle.dart';

class EnterPin extends StatelessWidget {
  var loremIpsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ';

  EnterPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Text(
          'Top Up',
          style: titleAppbar,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 18,
          right: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ENTER YOUR PIN',
              textAlign: TextAlign.center,
              style: txtEnterPin,
            ),
            const SizedBox(height: 50),
            PinFieldAutoFill(
              currentCode: '123456',
              decoration: UnderlineDecoration(
                lineHeight: 5,
                textStyle: pinNumber,
                colorBuilder: FixedColorBuilder(const Color(0xff2D8D7B)),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              loremIpsum,
              textAlign: TextAlign.center,
              style: txtLoremPin,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 50,
          color: const Color(0xff2D8D7B),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const WithdrawalFinished(),
                  transitionDuration: const Duration(milliseconds: 500),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ),
              );
            },
            child: Text(
              'NEXT',
              style: txtNextRefunds,
            ),
          )),
    );
  }
}
