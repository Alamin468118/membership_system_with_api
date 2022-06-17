import 'package:flutter/material.dart';
import 'package:membership_system_1/auth/sign_up.dart';

import 'features/splash_animation/splash_animation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Membership Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SplashAnimationScreen(),
      home: SignUpPage(),
    );
  }
}
