import 'package:flutter/cupertino.dart';
import 'package:spotifuad/screen/home/home_screen.dart';
import 'package:spotifuad/screen/login/login_screen.dart';
import 'package:spotifuad/screen/splash/splash_screen.dart';

var routes = <String, WidgetBuilder>{
  MyScreen.home: (BuildContext context) => HomeScreen(),
  MyScreen.splash: (BuildContext context) => SplashScreen(),
  MyScreen.login: (BuildContext context) => LoginScreen(),
};

class MyScreen {
  static var home = '/HomeScreen';
  static var splash = '/SplashScreen';
  static var login = '/LoginScreen';
}

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(MyScreen.home);
  }

  static void goToLogin(BuildContext context){
    Navigator.of(context).pushReplacementNamed(MyScreen.login);
  }
}
