import 'package:flutter/material.dart';
import '../../models/article.dart';
import '../../core/constants/colors/app_color.dart';

// scren to show full article content
class BlogDetailScreen extends StatelessWidget {
  final Article article;

  const BlogDetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل المقال'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main image
            Image.asset(
              article.imagePath,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 250,
                  color: AppColor.primaryColor.withOpacity(0.1),
                  child: const Icon(Icons.image, size: 100, color: AppColor.primaryColor),
                );
              },
            ),
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header row with category and views
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        article.category,
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.remove_red_eye, size: 18, color: Colors.grey),
                          const SizedBox(width: 5),
                          Text('${article.watchCount} مشاهدة', style: const TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  
                  // article title
                  Text(
                    article.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // show tags
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: article.tags.map((tg) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        tg,
                        style: const TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    )).toList(),
                  ),
                  
                  const Divider(height: 40), 
                  
                  // content body
                  Text(
                    article.content,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.6, 
                    ),
                  ),

                  const SizedBox(height: 30),
                  const Text(
                    'التعليقات',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  // show comment list
                  ...article.comments.map((msg) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(msg),
                  )).toList(),

                  // box to write new comment
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'أضف تعليقاً...',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.send, color: AppColor.primaryColor),
                        onPressed: () {
                          // just for show
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
