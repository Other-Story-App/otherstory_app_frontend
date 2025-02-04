import 'package:go_router/go_router.dart';
import 'package:otherstory_app/features/auth_page/presentation/screens/login_screen.dart';
import 'package:otherstory_app/features/auth_page/presentation/screens/register_screen.dart';
import 'package:otherstory_app/features/main_page/presentation/screens/main_screen.dart';
import 'package:otherstory_app/features/navigation/presentation/screens/scaffold_with_nav_bar.dart';
import 'package:otherstory_app/features/profile_page/presentation/screens/profile_screen.dart';
import 'package:otherstory_app/features/statistics_page/presentation/screens/statistics_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      StatefulShellRoute(
        builder: (context, state, navigationShell) {
          return navigationShell;
        },
        navigatorContainerBuilder: (context, navigationShell, children) {
          return ScaffoldWithNavBar(
              navigationShell: navigationShell, children: children);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const MainScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/statistics',
                builder: (context, state) => const StatisticsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
