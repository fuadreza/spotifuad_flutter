import 'dart:async';


import 'package:flutter/material.dart';
import 'package:spotifuad/utils/navigator.dart';
import 'package:spotifuad/utils/setup.dart';
import 'package:spotifuad/utils/tools.dart';

class SplashScreen extends StatelessWidget {
  final String imageSplash = 'images/ic_logo.png';

  dynamic startTimer(BuildContext context) async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, () => MyNavigator.goToHome(context));
  }

  @override
  Widget build(BuildContext context) {
    startTimer(context);
    return Scaffold(
      body: Hero(
        tag: 'logo',
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [HexColor(Settings['StartGrad']), HexColor(Settings['EndGrad'])]
            )
          ),
          child: Center(
            child: Image.asset(
              imageSplash,
              width: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}
