import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ulesstrash_driver/utils/textstyle.dart';

import '../ui/home/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg_login.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Center(
                  child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Driver',
                      style: welcomeLogin,
                    ),
                    Text(
                      'Welcome Back',
                      style: welcomeLogin,
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: textfieldLogin,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffffff),
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: textfieldLogin,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffffffff),
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forgot Password',
                          style: forgotPassword,
                        )),
                  ],
                ),
              )),
              const SizedBox(height: 20),
              MaterialButton(
                  minWidth: double.infinity,
                  height: 40,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: Text(
                    'Login',
                    style: btnLogin,
                  )),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
