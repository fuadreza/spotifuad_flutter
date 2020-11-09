
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotifuad/screen/login/bloc/login_state.dart';
import 'package:spotifuad/services/user_repository.dart';

class LoginCubit extends Cubit<LoginState>{
  final UserRepository _repository;

  LoginCubit(this._repository) : super(LoginInitState());

  Future<void> loginUser(String username, String password){
    return null;
  }

}