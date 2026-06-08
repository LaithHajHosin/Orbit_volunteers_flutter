import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:orbit_volunteers_flutter/core/constants/colors/app_color.dart';
import 'package:orbit_volunteers_flutter/core/routing/app_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('متطوع'),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () => context.push(AppRoute.loginScreen),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/photo_2026-06-04_13-00-24.jpg',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.4),
                ),
                Column(
                  children: [
                    const Text(
                      'أهلاً بك في فريق متطوع',
                      style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '+100 متطوع | +500 مشروع',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => context.go(AppRoute.projectScreen),
                      child: const Text('اكتشف المشاريع'),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Section: Our Goals
            _buildSectionTitle('أهدافنا'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                children: [
                  _buildGoalCard(Icons.favorite, 'خدمة المجتمع'),
                  _buildGoalCard(Icons.star, 'تطوير المهارات'),
                  _buildGoalCard(Icons.group, 'العمل الجماعي'),
                  _buildGoalCard(Icons.lightbulb, 'الابتكار التقني'),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Section: Featured Articles
            _buildSectionTitle('المقالات'),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'تابع أحدث المقالات التقنية والبرمجية من فريقنا.',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () => context.go(AppRoute.blogScreen),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryBlue),
              child: const Text('شاهد جميع المقالات'),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.primaryBlue),
      ),
    );
  }

  Widget _buildGoalCard(IconData icon, String title) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.primaryBlue, size: 30),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
