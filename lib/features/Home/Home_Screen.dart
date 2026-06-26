import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../core/network/dio_client.dart';
import '../../core/network/dio_factory.dart';
import 'datasource/home_remote_data_source.dart';

// home scren hear
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    print("initState works");

    testApi();
  }



  Future<void> testApi() async {
    try {
      final dio = Dio();

      dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestBody: true,
          responseBody: true,
          error: true,
        ),
      );

      final response = await dio.get(
        "https://orbitvolunteers.atwebpages.com/projects",
      );

      print(response.data);
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // const _HomeHeader(),

              SizedBox(height: 24),

              TextField(
                decoration: InputDecoration(
                  hintText: 'بحث عن المشاريع...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 28),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "المشاريع المميزة",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("عرض الكل"),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.42,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: ProjectCard(),
                    );
                  },
                ),
              ),

              const SizedBox(height: 28),



              const SizedBox(height: 32),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "أحدث المقالات",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("عرض الكل"),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const BlogCard(),
              const SizedBox(height: 16),
              const BlogCard(),
            ],
          ),
        ),
      ),
      );

  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: 60,
            height: 60,
            child: Image.asset("assets/images/photo_logo.png"),
          ),
        ),
        const SizedBox(width: 12),

        Row(
          children: [
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

      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              decoration: const BoxDecoration(
                color: Color(0xFFE5E7EB),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Icon(Icons.image, size: 40),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "مطلوب متطوعون",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "حملة تنظيف المجتمع",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Expanded(
                      child: Text(
                        "ساهم في تحسين البيئة وجعل مدينتك أكثر نظافة.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("انضم"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius:
              BorderRadius.circular(14),
            ),
            child: const Icon(Icons.article),
          ),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  "كيف يساهم التطوع في تغيير المجتمعات",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "اقرأ قصصاً ملهمة لمتطوعين من مختلف أنحاء العالم.",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}