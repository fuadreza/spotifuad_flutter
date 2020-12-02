import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotifuad/screen/login/bloc/login_cubit.dart';
import 'package:spotifuad/screen/splash/splash_screen.dart';
import 'package:spotifuad/services/user_repository.dart';
import 'package:spotifuad/utils/navigator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(UserRepository()),
      child: MaterialApp(
        title: 'Spotifuad',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
        routes: routes,
      ),
    );
  }
}