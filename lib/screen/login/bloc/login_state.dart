
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class LoginState extends Equatable{

  final List _props = const [];

  @override
  List<Object> get props => _props;
}

class LoginInitState extends LoginState{
  @override
  String toString() => 'LoginInitState';
}

class LoginLoadingState extends LoginState{
  @override
  String toString() => 'LoginLoadingState';
}

class LoginUserState extends LoginState{
  final String username;
  final String password;

  LoginUserState(this.username, this.password);

  @override
  String toString() => 'LoginUserState';
}