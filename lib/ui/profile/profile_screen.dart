import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/color.dart';
import '../../utils/textstyle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Image.asset('assets/images/ic_back2.png'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                'Profile',
                style: titleAppbar2,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                clipBehavior: Clip.none,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  Positioned(
                    // make to bottom center
                    bottom: -15,
                    right: 0,
                    left: 0,

                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff00AB9E),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Full Name',
              style: titleProfile,
            ),
            const SizedBox(height: 5),
            Wrap(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: const Color(0xffE5E5E5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Text(
                      'Raeihan Alvaro',
                      style: txtBankNum,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Phone Number',
              style: titleProfile,
            ),
            const SizedBox(height: 5),
            Wrap(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: const Color(0xffE5E5E5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Text(
                      '021-234-567-890',
                      style: txtBankNum,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Email',
              style: titleProfile,
            ),
            const SizedBox(height: 5),
            Wrap(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: const Color(0xffE5E5E5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Text(
                      'Raeihan@google.com',
                      style: txtBankNum,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Gender',
              style: titleProfile,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                // radio button
                Row(
                  children: [
                    Radio(
                      fillColor:
                          MaterialStateProperty.all(AppColor.primaryColor),
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                    Text(
                      'Male',
                      style: txtBankNum,
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Radio(
                      fillColor:
                          MaterialStateProperty.all(AppColor.primaryColor),
                      value: false,
                      groupValue: 1,
                      onChanged: (value) {},
                    ),
                    Text(
                      'Female',
                      style: txtBankNum,
                    ),
                  ],
                ),
                const Spacer()
              ],
            ),
            const SizedBox(height: 30),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: AppColor.primaryColor,
              height: 50,
              minWidth: double.infinity,
              onPressed: () {},
              child: Text(
                'Save',
                style: btnSave,
              ),
            )
          ],
        ),
      ),
    );
  }
}
