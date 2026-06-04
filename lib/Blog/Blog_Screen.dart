import 'package:flutter/material.dart';
import 'package:orbit_volunteers_flutter/Blog/Article.dart';
import 'package:orbit_volunteers_flutter/My_Theme.dart';

// This is the blog page where I show the posts
class BlogScreen extends StatelessWidget {
  static const String routeName = 'blog';

  // My list of posts
  final List<Article> articles = [
    Article(
      title: 'أخيراً.. خبص بس خلص',
      content: 'وأخيرااا .. أزف إليكم باقيلي آخر مادة... وعنوانها خبص بس خلص 👩‍💻😆',
      imagePath: '', // no images anymore
      date: 'May 23, 2026',
    ),
    Article(
      title: 'خلصناااا 🤣🤣',
      content: "خلصناااا 🤣🤣 السؤال يلي ما تعرفه it's easyألفه 🙂😆\n#نظم",
      imagePath: '',
      date: 'May 24, 2026',
    ),
    Article(
      title: 'مقابلة مع مهندس',
      content: "-صباح الخير مهندس محمد كيفك \n=بلاها الرسميات .. مهندس بس 💁🏼‍♂️",
      imagePath: '',
      date: 'May 25, 2026',
    ),
    Article(
      title: 'مقولة دكتور - الموبايلات',
      content: "الي بشوفه فاتح موبايله لأصادره \nوبعدها آخر الفصل مناخد الموبايلات منبيعهم ومنوزع حقهم ع الفقراء والمساكين والعاملين عليها \n#مقولة_دكتور",
      imagePath: '',
      date: 'May 26, 2026',
    ),
    Article(
      title: 'الدكتور لما يعصب',
      content: "لما الدكتور يعصب ويصير بده يسكت الناس بصير بينادي بالكنيات.. تقول عسكر مو طلاب 🤣💔",
      imagePath: '',
      date: 'May 27, 2026',
    ),
    Article(
      title: 'ماكينة كبة',
      content: "في واحد طلعان معه زمن تنفيذ البرنامح 100 ثانية بدك مية عصاية تتطرقك ع راسك .. هاد معالج او ما كينة كبة\n#مقولة_دكتور",
      imagePath: '',
      date: 'May 28, 2026',
    ),
    Article(
      title: 'تعذيب البرمجة',
      content: "=هو في تعليمة بالمكتبة اسمها sort بتحطوها وبتدخلوا الخوارزمية بتترتب لحالها \n-دكتورة طيب ليش مناخد ه الاكواد \n=هيك تعذيب ✨\n#مقولة_دكتور",
      imagePath: '',
      date: 'May 29, 2026',
    ),
    Article(
      title: 'ميزان الحرارة',
      content: "بالفحص لما لأجي لأجيب معي ميزان حرارة .. أحطه فوق روسكم إذا إرتفعت الحرارة معناها مخكم عم يشتغل .. معناها بزودلكم علامات \n#مقولة_دكتور",
      imagePath: '',
      date: 'May 30, 2026',
    ),
    Article(
      title: 'العصبون الجديد',
      content: "من بده يقوم يساعدنا بحل السؤال\nحدا مشجع\nحدا متفرج\nحدا حس انه في عصبون جديد صار يتحرك وليقوم يجرب \n\n#مقولة_دكتور",
      imagePath: '',
      date: 'June 01, 2026',
    ),
    Article(
      title: 'التطنيش الصح',
      content: "ابقى بالبيت و طنش المحاضرة❌\nروح ع الجامعة و طنشها من هنيك✅",
      imagePath: '',
      date: 'June 02, 2026',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orbit Blog - المقالات'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10), // space around the list
        itemCount: articles.length,
        itemBuilder: (context, index) {
          // I will use a simple Card for each post
          return Card(
            elevation: 2,
            margin: EdgeInsets.only(bottom: 15),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, // for Arabic text
                children: [
                  // Post Title
                  Text(
                    articles[index].title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: MyTheme.primaryBlue,
                    ),
                  ),
                  SizedBox(height: 5),
                  // Post Date
                  Text(
                    articles[index].date,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  // Post Content
                  Text(
                    articles[index].content,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
