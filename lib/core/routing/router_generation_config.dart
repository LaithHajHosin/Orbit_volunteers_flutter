import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:orbit_volunteers_flutter/core/routing/app_route.dart';
import 'package:orbit_volunteers_flutter/features/Home/home_screen.dart';
import 'package:orbit_volunteers_flutter/features/Blog/blog_screen.dart';
import 'package:orbit_volunteers_flutter/features/Projects/project_screen.dart';
import 'package:orbit_volunteers_flutter/features/Profile/profile_screen.dart';
import 'package:orbit_volunteers_flutter/features/Auth/login_screen.dart';
import 'package:orbit_volunteers_flutter/features/Auth/register_screen.dart';
import 'package:orbit_volunteers_flutter/core/constants/colors/app_color.dart';

// Handling all the navigation here
class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoute.homeScreen,
    routes: [
      GoRoute(
        path: AppRoute.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoute.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return MainScaffold(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoute.homeScreen,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoute.projectScreen,
            builder: (context, state) => ProjectScreen(),
          ),
          GoRoute(
            path: AppRoute.blogScreen,
            builder: (context, state) => BlogScreen(),
          ),
          GoRoute(
            path: AppRoute.profileScreen,
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
}

class MainScaffold extends StatelessWidget {
  final Widget child;
  const MainScaffold({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryBlue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'المشاريع'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'المقالات'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حسابي'),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location == AppRoute.homeScreen) return 0;
    if (location == AppRoute.projectScreen) return 1;
    if (location == AppRoute.blogScreen) return 2;
    if (location == AppRoute.profileScreen) return 3;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(AppRoute.homeScreen);
        break;
      case 1:
        GoRouter.of(context).go(AppRoute.projectScreen);
        break;
      case 2:
        GoRouter.of(context).go(AppRoute.blogScreen);
        break;
      case 3:
        GoRouter.of(context).go(AppRoute.profileScreen);
        break;
    }
  }
}
