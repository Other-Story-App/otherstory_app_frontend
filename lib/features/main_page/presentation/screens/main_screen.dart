import 'package:flutter/material.dart';
import 'package:otherstory_app/theme/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    print('main init');
  }

  @override
  void dispose() {
    print('main disp');
    super.dispose();
  }

  @override
  void deactivate() {
    print('main deact');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.blackColor, width: 1)),
      child: const Center(child: Text('MainScreen')),
    );
  }
}
