import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/models/article.dart';

// blog list hear
class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Article> articls = [
    Article(
      title: '',
      content: '',
      imagePath: '',
      author: '',
      category: '',
      date: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: articls.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: const SizedBox(height: 100), // empty card no text or photo
          );
        },
      ),
    );
  }
}
