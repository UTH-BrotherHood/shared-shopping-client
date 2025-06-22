import 'package:flutter/material.dart';

class LoginModel with ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

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
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
