import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/models/project.dart';
import 'package:orbit_volunteers_flutter/core/constants/colors/app_color.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});

  final List<Project> projects = [
    Project(
      title: 'مشروع تعليم الأطفال',
      description: 'مشروع يهدف إلى دعم الأطفال تعليمياً وتنمية مهاراتهم التقنية والمعرفية ضمن بيئة تعليمية مناسبة...',
      imagePath: 'https://raw.githubusercontent.com/LaithHajHosin/Orbit_volunteers_project1/main/assets/images/test.jpg',
      volunteers: '12',
      status: 'قيد التحضير',
      type: 'Web',
    ),
    Project(
      title: 'مشروع دعم الطلاب',
      description: 'مشروع تطوعي يساعد الطلاب على تطوير مهاراتهم البرمجية والتقنية وتحسين فرصهم المهنية...',
      imagePath: 'https://raw.githubusercontent.com/LaithHajHosin/Orbit_volunteers_project1/main/assets/images/test.jpg',
      volunteers: '8',
      status: 'يحتاج متطوعين',
      type: 'Design',
    ),
    Project(
      title: 'مشروع المجتمع الرقمي',
      description: 'مبادرة تهدف إلى نشر الثقافة الرقمية وتطوير مهارات الشباب في التكنولوجيا والعمل الجماعي...',
      imagePath: 'https://raw.githubusercontent.com/LaithHajHosin/Orbit_volunteers_project1/main/assets/images/test.jpg',
      volunteers: '15',
      status: 'منجز',
      type: 'Marketing',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المشاريع'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.network(
                      project.imagePath,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project.title,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primaryBlue),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          project.description,
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.group, size: 18, color: AppColors.primaryBlue),
                                const SizedBox(width: 5),
                                Text('${project.volunteers} متطوع'),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryBlue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                project.status,
                                style: const TextStyle(color: AppColors.primaryBlue, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
