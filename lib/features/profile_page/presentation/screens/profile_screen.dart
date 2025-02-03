import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otherstory_app/theme/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    print('prof init');
  }

  @override
  void dispose() {
    print('prof disp');
    super.dispose();
  }

  @override
  void deactivate() {
    print('prof deact');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.blackColor, width: 1)),
      child: Center(
        child: TextButton(
            onPressed: () => context.go('/'),
            child: const Text('ProfileScreen')),
      ),
    );
  }
}
