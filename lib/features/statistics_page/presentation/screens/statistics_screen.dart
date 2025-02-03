import 'package:flutter/material.dart';
import 'package:otherstory_app/theme/app_colors.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  void initState() {
    super.initState();
    print('stat init');
  }

  @override
  void dispose() {
    print('stat disp');
    super.dispose();
  }

  @override
  void deactivate() {
    print('stat deact');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.blackColor, width: 1)),
      child: const Center(child: Text('StatisticsScreen')),
    );
  }
}
