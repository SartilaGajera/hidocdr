import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/controller/article_controller.dart';
import 'package:hidoc/utils/widget/appbar.dart';
import 'package:hidoc/utils/widget/bd_design.dart';
import 'package:hidoc/utils/widget/custom_button.dart';
import 'package:hidoc/utils/widget/custom_text.dart';
import 'package:hidoc/utils/widget/drop_down_card.dart';
import 'package:hidoc/utils/widget/quic_card.dart';
import 'package:hidoc/utils/widget/visit_card.dart';
import 'package:hidoc/view/artcle_web_view.dart';
import 'package:hidoc/view/article_list.dart';
import 'package:hidoc/view/hidoc_bulletin_list.dart';
import 'package:hidoc/view/latest_article_list.dart';
import 'package:hidoc/view/news_list.dart';
import 'package:hidoc/view/trending_article_list.dart';
import 'package:hidoc/view/trending_bulletin_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;


class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  final controller = Get.put(ArticleController());


  @override
  void initState() {
    () async {
      await controller.getArticleData();
    }();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? const ArticleWebView()
        : Scaffold(
            body: Stack(alignment: Alignment.topCenter, children: [
              const BgDesign(),
              Column(
                children: [
                  const AppBarMobile(),
                  Expanded(
                      child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                    children: [
                      const DropDownCard(),
                      const SizedBox(height: 20),
                      Obx(
                        () => controller.articleList.isNotEmpty
                            ? const ArticleList()
                            : const SizedBox(),
                      ),
                      const SizedBox(height: 20),
                      const HidocbulletinList(),
                      const TrendingBulletinList(),
                      const SizedBox(height: 30),
                      const CustomButton1(text: "Read More Bulletins",horizontalPadding: 50),
                      const SizedBox(height: 20),
                      LatestArticleList(
                          data: controller.latestArticleList, title: "latest article"),
                      const SizedBox(height: 10),
                      const TrendingArticleList(),
                      const SizedBox(height: 10),
                      LatestArticleList(
                          data: controller.exploreArticleList, title: "explore more in articles"),
                      const SizedBox(height: 20),
                      const CustomButton(text: "Explore Hidoc Dr."),
                      const SizedBox(height: 20),
                      customTitle(title: "what's more on hidoc dr. "),
                      const SizedBox(height: 20),
                      const NewsList(),
                      const SizedBox(height: 20),
                      const QuizCard(),
                      const SizedBox(height: 20),
                      const VisitCard(),
                      const SizedBox(height: 50),
                    ],
                  ))
                ],
              )
            ]),
          );
  }
}
