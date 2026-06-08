import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/core/routing/router_generation_config.dart';
import 'package:orbit_volunteers_flutter/core/theme/app_theme.dart';

void main() {
  runApp(const OrbitApp());
}

class OrbitApp extends StatelessWidget {
  const OrbitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Orbit Volunteers',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
