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

// router is hear
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
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(
            path: AppRoute.homeScreen,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoute.projectScreen,
            builder: (context, state) => const ProjectScreen(),
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

// main scaffol for bar
class MainScaffold extends StatelessWidget {
  final Widget child;
  const MainScaffold({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/photo_logo1.png',
          height: 60,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login_sharp),
          ),
        ],



      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: calculateIndex(context),
        onTap: (index) => goToPage(index, context),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.primaryColor,
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

  static int calculateIndex(BuildContext context) {
    final String locatn = GoRouterState.of(context).uri.path;
    if (locatn == AppRoute.homeScreen) return 0;
    if (locatn == AppRoute.projectScreen) return 1;
    if (locatn == AppRoute.blogScreen) return 2;
    if (locatn == AppRoute.profileScreen) return 3;
    return 0;
  }

  void goToPage(int index, BuildContext context) {
    if (index == 0) GoRouter.of(context).go(AppRoute.homeScreen);
    else if (index == 1) GoRouter.of(context).go(AppRoute.projectScreen);
    else if (index == 2) GoRouter.of(context).go(AppRoute.blogScreen);
    else if (index == 3) GoRouter.of(context).go(AppRoute.profileScreen);
  }
}
