import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final User user;
  AuthSuccess(this.user);
}

class AuthFailure extends AuthState {
  final String error;
  AuthFailure(this.error);
}


class AuthMobileLoginLoading extends AuthState {}

class AuthMobileLoginSuccess extends AuthState {
  
  AuthMobileLoginSuccess();
}

class AuthMobileLoginFailure extends AuthState {
  final String error;
  AuthMobileLoginFailure(this.error);
}
