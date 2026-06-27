import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../models/article.dart';
import '../../core/constants/colors/app_color.dart';
import '../../core/routing/app_route.dart';

// main blog list scren
class BlogScreen extends StatefulWidget {
  BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  // controller for the search input
  final TextEditingController searchController = TextEditingController();
  
  // dummy articls for testing
  final List<Article> articls = [
    Article(
      title: 'مستقبل الذكاء الاصطناعي في حياتنا',
      content: 'الذكاء الاصطناعي هو المستقبل، وهو يغير كل شيء من حولنا بسرعة. في هذا المقال سنتحدث عن أهم التحولات التي يشهدها العالم بسببه وكيف يمكننا الاستفادة منه في حياتنا اليومية.',
      imagePath: 'assets/images/ai.webp',
      category: 'تقنية',
      watchCount: 145,
      tags: ['#ذكاء', '#تقنية', '#مستقبل'],
      comments: ['مقال مفيد جداً', 'شكراً على الطرح'],
    ),
    Article(
      title: 'كيف تحمي بياناتك الشخصية؟',
      content: 'الأمن السيبراني ليس مجرد كلمات، بل هو ضرورة لحماية خصوصيتك. تعلم كيف تحمي حساباتك من الاختراق وتأكد من استخدام كلمات مرور قوية جداً.',
      imagePath: 'assets/images/cyberscurity.webp',
      category: 'أمن',
      watchCount: 92,
      tags: ['#حماية', '#أمن', '#خصوصية'],
      comments: ['موضوع مهم جداً'],
    ),
    Article(
      title: 'أفضل لغات البرمجة للتعلم في 2024',
      content: 'إذا كنت تريد البدء في عالم البرمجة، فهذا المقال لك. سنستعرض أفضل اللغات التي يطلبها سوق العمل حالياً وكيف تبدأ رحلتك من الصفر.',
      imagePath: 'assets/images/it.webp',
      category: 'برمجة',
      watchCount: 310,
      tags: ['#برمجة', '#تعلم', '#تطوير'],
      comments: ['أريد تعلم فلاتر!', 'بالتوفيق للجميع'],
    ),
  ];

  // list of tags to show below search
  final List<String> tagsList = ['الكل', '#ذكاء', '#تقنية', '#حماية', '#برمجة', '#تعلم'];
  String selectedTag = 'الكل';

  // list to show filtered content
  List<Article> filteredArticls = [];

  @override
  void initState() {
    super.initState();
    filteredArticls = articls;
    
    // update list when searching
    searchController.addListener(() {
      filterNow();
    });
  }

  // logic for filtering by text and tags
  void filterNow() {
    String txt = searchController.text.toLowerCase();
    setState(() {
      filteredArticls = articls.where((item) {
        bool matchSearch = item.title.toLowerCase().contains(txt) || 
                          item.category.toLowerCase().contains(txt);
        
        bool matchTag = selectedTag == 'الكل' || item.tags.contains(selectedTag);
        
        return matchSearch && matchTag;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floating button to add new blog
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('غم اشتغل على صفحة اضافة المقالات')),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          // search box
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'ابحث عن مقال...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // horizontal tags scroll
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: tagsList.length,
              itemBuilder: (context, index) {
                String t = tagsList[index];
                bool isSel = selectedTag == t;
                
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ActionChip(
                    label: Text(t),
                    labelStyle: TextStyle(
                      color: isSel ? Colors.white : Colors.black87,
                      fontWeight: isSel ? FontWeight.bold : FontWeight.normal,
                    ),
                    backgroundColor: isSel ? AppColor.primaryColor : Colors.grey[200],
                    onPressed: () {
                      setState(() {
                        selectedTag = t;
                      });
                      filterNow();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide.none,
                  ),
                );
              },
            ),
          ),
          
          const SizedBox(height: 10),

          // the main blog list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: filteredArticls.length,
              itemBuilder: (context, index) {
                final art = filteredArticls[index];
                
                return Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  clipBehavior: Clip.antiAlias, 
                  child: InkWell( 
                    onTap: () {
                      // navigate to details
                      context.push(AppRoute.blogDetailScreen, extra: art);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // article image from assets
                        Image.asset(
                          art.imagePath,
                          height: 160,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 160,
                              color: AppColor.primaryColor.withOpacity(0.1),
                              child: const Icon(Icons.image, size: 50, color: AppColor.primaryColor),
                            );
                          },
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    art.category,
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  // watch icon and count
                                  Row(
                                    children: [
                                      const Icon(Icons.remove_red_eye_outlined, size: 16, color: Colors.grey),
                                      const SizedBox(width: 4),
                                      Text(
                                        '${art.watchCount}',
                                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5), 
                              
                              Text(
                                art.title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              
                              // show tags in boxes
                              Wrap(
                                spacing: 8,
                                children: art.tags.map((tg) => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    tg,
                                    style: const TextStyle(color: Colors.blue, fontSize: 12),
                                  ),
                                )).toList(),
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
        ],
      ),
    );
  }
}
