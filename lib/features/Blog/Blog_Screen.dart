import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/models/article.dart';
import 'package:orbit_volunteers_flutter/core/constants/colors/app_color.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Article> articles = [
    Article(
      title: 'كيف تغير نماذج اللغة الكبيرة (LLMs) مستقبل البرمجة؟',
      content: 'هذا وصف موجز للمقالة. يهدف هذا المقال إلى شرح تأثير LLMs على البرمجة وكيفية الاستفادة منها في تحسين جودة الكود وتسريع عملية التطوير وكيف يمكن للمبرمجين ان يطورو انفسهم باستخدام هذه التقنيات الجديدة.',
      imagePath: 'https://raw.githubusercontent.com/LaithHajHosin/Orbit_volunteers_project1/main/assets/images/ai.webp',
      author: 'أدهم',
      category: 'الذكاء الاصطناعي',
      date: '10 يناير 2026',
    ),
    Article(
      title: 'أحدث هجمات الفدية (Ransomware) وطرق الحماية منها',
      content: 'شرح لأحدث هجمات الفدية وأساليب الحماية الحديثة التي يجب على المؤسسات والأفراد اتباعها لتجنب الوقوع ضحية لهذه الهجمات المتطورة والمنتشرة في هذه الايام بشكل كبير جدا.',
      imagePath: 'https://raw.githubusercontent.com/LaithHajHosin/Orbit_volunteers_project1/main/assets/images/cyberscurity.webp',
      author: 'حميد',
      category: 'الأمن السيبراني',
      date: '8 يناير 2026',
    ),
    Article(
      title: 'الحوسبة الكمومية: هل تنهي التشفير كما نعرفه؟',
      content: 'نظرة على تأثير الحوسبة الكمومية على أنظمة التشفير الحالية وكيف تستعد المؤسسات الأمنية لعصر ما بعد الحوسبة الكمومية والتحديات التي تواجه العلماء في هذا المجال.',
      imagePath: 'https://raw.githubusercontent.com/LaithHajHosin/Orbit_volunteers_project1/main/assets/images/it.webp',
      author: 'راما',
      category: 'تقنيات متقدمة',
      date: '5 يناير 2026',
    ),
    Article(
      title: 'التزييف العميق (Deepfake): تهديد رقمي وكيف تكتشفه',
      content: 'كيف تعمل تقنيات التزييف العميق وطرق اكتشافها، وأهم النصائح لتجنب التضليل الإعلامي الناتج عن هذه التقنيات المتطورة التي قد تؤثر على المجتمع بشكل سلبي.',
      imagePath: 'https://raw.githubusercontent.com/LaithHajHosin/Orbit_volunteers_project1/main/assets/images/deepfake.webp',
      author: 'حلا',
      category: 'أمن الذكاء الاصطناعي',
      date: '2 يناير 2026',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المقالات'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailsScreen(article: article),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.only(bottom: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        article.imagePath,
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
                            article.category,
                            style: const TextStyle(color: AppColors.primaryBlue, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            article.title,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(Icons.person, size: 16, color: Colors.grey),
                              const SizedBox(width: 5),
                              Text(article.author, style: const TextStyle(color: Colors.grey)),
                              const Spacer(),
                              Text(article.date, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ArticleDetailsScreen extends StatelessWidget {
  final Article article;
  const ArticleDetailsScreen({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تفاصيل المقال')),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(article.imagePath),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.category,
                      style: const TextStyle(color: AppColors.primaryBlue, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      article.title,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.person, color: Colors.grey),
                        const SizedBox(width: 5),
                        Text(article.author, style: const TextStyle(fontSize: 16)),
                        const Spacer(),
                        Text(article.date, style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const Divider(height: 30),
                    Text(
                      article.content,
                      style: const TextStyle(fontSize: 18, height: 1.6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
