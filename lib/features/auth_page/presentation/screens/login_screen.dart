import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otherstory_app/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.blackColor, width: 1)),
      child: Center(
          child: TextButton(
              onPressed: () => context.go('/home'),
              child: const Text('LoginScreen'))),
    );
  }
}
