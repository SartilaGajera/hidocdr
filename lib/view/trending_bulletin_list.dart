import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/controller/article_controller.dart';

import '../utils/widget/custom_text.dart';

class TrendingBulletinList extends StatefulWidget {
  const TrendingBulletinList({Key? key}) : super(key: key);

  @override
  State<TrendingBulletinList> createState() => _TrendingBulletinListState();
}

class _TrendingBulletinListState extends State<TrendingBulletinList> {
  final controller = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          color: const Color(0xff00bcd5).withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTitle(title: "Trending Hidoc Bulletin"),
          ListView.builder(
              padding: const EdgeInsets.only(top: 15),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.trendingBulletinList.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    customSubTitle(title: controller.trendingBulletinList[index]['articleTitle']),
                    const SizedBox(height: 10),
                    customDesc(title: controller.trendingBulletinList[index]['articleDescription']),
                    const SizedBox(height: 8),
                    customReadMore(title: "read more"),
                    const SizedBox(height: 15),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
