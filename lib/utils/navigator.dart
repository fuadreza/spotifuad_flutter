import 'package:flutter/cupertino.dart';
import 'package:spotifuad/screen/home/home_screen.dart';
import 'package:spotifuad/screen/splash/splash_screen.dart';

var routes = <String, WidgetBuilder>{
  MyScreen.home: (BuildContext context) => HomeScreen(),
  MyScreen.splash: (BuildContext context) => SplashScreen(),
};

class MyScreen {
  static var home = '/HomeScreen';
  static var splash = '/SplashScreen';
}

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(MyScreen.home);
  }
}
