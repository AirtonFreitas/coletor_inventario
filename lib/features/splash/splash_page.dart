import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Navigator.popAndPushNamed(context, 'login');
    });
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'assets/logoApp.png',
            width: MediaQuery.of(context).size.width / 2,
          ),
        ));
  }
}
