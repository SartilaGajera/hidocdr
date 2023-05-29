import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/controller/article_controller.dart';

import '../utils/widget/custom_text.dart';


class TrendingArticleList extends StatefulWidget {
  const TrendingArticleList({Key? key}) : super(key: key);

  @override
  State<TrendingArticleList> createState() => _TrendingArticleListState();
}

class _TrendingArticleListState extends State<TrendingArticleList> {
  final controller = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.4))),
      child: Column(
        children: [
          customSubTitle(title: "trending article"),
          ListView.builder(
              padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.trendingArticleList.length,
              itemBuilder: (context, index) {

                return index %2==0
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(height: 1,width: Get.width,color: Colors.black.withOpacity(0.4),),

                          Image.network(
                            controller.trendingArticleList[index]['articleImg'],
                            height: 200,
                            width: Get.width,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 10),
                          customDesc(
                              title: controller.trendingArticleList[index]['articleTitle'],
                              color: Colors.black.withOpacity(0.4)),
                          const SizedBox(height: 10),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(color: Colors.black.withOpacity(0.4)),
                          const SizedBox(height: 10),
                          Row(
                            children: [

                              Image.network(
                              controller.trendingArticleList[index]['articleImg'],
                              height: 70,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: customDesc(
                                    title: controller.trendingArticleList[index]['articleTitle'],
                                    color: Colors.black.withOpacity(0.4)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
              }),
        ],
      ),
    );
  }
}
