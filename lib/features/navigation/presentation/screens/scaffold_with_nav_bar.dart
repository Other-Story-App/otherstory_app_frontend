import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otherstory_app/features/navigation/data/constants/navigation_constants.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  final List<Widget> children;
  const ScaffoldWithNavBar(
      {super.key, required this.navigationShell, required this.children});

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  void _onTap(BuildContext context, int index) {
    _pageController.animateToPage(index,
        duration: NavigationConstants.swipeAnimationDuration,
        curve: NavigationConstants.swipeAnimationCurve);
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: widget.navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: widget.children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (int index) => _onTap(context, index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Обо мне'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
        ],
      ),
    );
  }
}
