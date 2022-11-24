import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ulesstrash_driver/ui/top%20up/bank_account.dart';

import '../../utils/textstyle.dart';

class SelectRekening extends StatefulWidget {
  const SelectRekening({super.key});

  @override
  State<SelectRekening> createState() => _SelectRekeningState();
}

class _SelectRekeningState extends State<SelectRekening> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/ic_back.png'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Top Up',
                style: titleAppbar,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_ovo.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'OVO',
                          style: txtTitlePayment,
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    checkColor: const Color(0xff2D8D7B),
                    shape: const CircleBorder(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE5E5E5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_bca.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Bank BCA',
                          style: txtTitlePayment,
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    activeColor: const Color(0xff2D8D7B),
                    checkColor: const Color(0xffffffff),
                    shape: const CircleBorder(),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 50,
          color: isChecked == false
              ? const Color(0xffE5E5E5)
              : const Color(0xff2D8D7B),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const BankAccount();
              }));
            },
            child: Text(
              isChecked == false ? 'SAVE' : 'NEXT',
              style: isChecked == false ? txtSaveRefunds : txtNextRefunds,
            ),
          )),
    );
  }
}
