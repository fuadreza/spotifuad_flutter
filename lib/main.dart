import 'package:flutter/material.dart';
import 'package:spotifuad/screen/splash/splash_screen.dart';
import 'package:spotifuad/utils/navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotifuad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: routes,
    );
  }
}