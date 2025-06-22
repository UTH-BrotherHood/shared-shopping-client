import 'package:flutter/material.dart';
import '../models/login_model.dart';

class LoginProvider with ChangeNotifier {
  final LoginModel _loginModel = LoginModel();
  bool _obscurePassword = true;

  LoginModel get loginModel => _loginModel;
  bool get obscurePassword => _obscurePassword;

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  Future<void> login() async {
    // TODO: Implement actual login logic
    await Future.delayed(const Duration(seconds: 2));
    // In a real app, you would validate credentials and handle errors
  }

  Future<void> loginWithGoogle() async {
    // TODO: Implement Google login
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _loginModel.dispose();
    super.dispose();
  }
}
