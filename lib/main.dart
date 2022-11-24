import 'package:flutter/material.dart';
import 'package:ulesstrash_driver/ui/home/home_page.dart';
import 'package:ulesstrash_driver/ui/splash%20screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
      home: const SplashScreen(),
    );
  }
}
