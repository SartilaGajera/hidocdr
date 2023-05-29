import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/view/trending_article_list.dart';
import 'package:hidoc/view/trending_bulletin_list.dart';
import '../controller/article_controller.dart';
import '../utils/widget/ad_card.dart';
import '../utils/widget/appbar_web.dart';
import '../utils/widget/contact_view.dart';
import '../utils/widget/copyright_card.dart';
import '../utils/widget/custom_button.dart';
import '../utils/widget/custom_text.dart';
import '../utils/widget/drop_down_card.dart';
import '../utils/widget/quic_card.dart';
import '../utils/widget/visit_card.dart';
import 'article_list.dart';
import 'hidoc_bulletin_list.dart';
import 'latest_article_list.dart';
import 'news_list.dart';

class ArticleWebView extends StatefulWidget {
  const ArticleWebView({Key? key}) : super(key: key);

  @override
  State<ArticleWebView> createState() => _ArticleWebViewState();
}

class _ArticleWebViewState extends State<ArticleWebView> {
  final controller = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppbarWeb(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Get.width / 10, vertical: 0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Articles".toUpperCase(),
                              style:
                              const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const DropDownCard(),
                          const SizedBox(height: 20),
                          Obx(
                                () => controller.articleList.isNotEmpty
                                ? MediaQuery.of(context).size.width > 585
                                ? ArticleListWeb(
                              controller: controller,
                            )
                                : const ArticleList()
                                : const SizedBox(),
                          ),
                          const SizedBox(height: 50),
                          MediaQuery.of(context).size.width > 585
                              ?  const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: HidocbulletinList()),
                              Expanded(child: TrendingBulletinList()),
                            ],
                          )
                              :  const Column(
                            children: [
                              HidocbulletinList(),
                              TrendingBulletinList(),
                            ],
                          ),
                          const SizedBox(height: 50),
                          CustomButton1(
                              text: "Read More Bulletins",
                              color: const Color(0xff00bcd5),
                              horizontalPadding: MediaQuery.of(context).size.width > 585
                                  ? Get.width / 4
                                  : 50),
                          const SizedBox(height: 50),
                          MediaQuery.of(context).size.width > 585
                              ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: LatestArticleList(
                                    data: controller.latestArticleList,
                                    title: "latest article"),
                              ),
                              const SizedBox(width: 10),
                               const Expanded(
                                child: TrendingArticleList(),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  children: [
                                    LatestArticleList(
                                        data: controller.exploreArticleList,
                                        title: "explore more in articles"),
                                    const SizedBox(height: 20),
                                    const CustomButton(
                                      text: "Explore Hidoc Dr.",
                                      color: Color(0xff00bcd5),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                              : Column(
                            children: [
                              LatestArticleList(
                                  data: controller.exploreArticleList,
                                  title: "explore more in articles"),
                              const SizedBox(height: 10),
                              const TrendingArticleList(),
                              const SizedBox(height: 10),
                              LatestArticleList(
                                  data: controller.exploreArticleList,
                                  title: "explore more in articles"),
                              const SizedBox(height: 20),
                              const CustomButton(
                                text: "Explore Hidoc Dr.",
                                color: Color(0xff00bcd5),
                              )
                            ],
                          ),
                          const SizedBox(height: 50),
                          Center(child: customTitle(title: "what's more on hidoc dr. ")),
                          const SizedBox(height: 20),
                          MediaQuery.of(context).size.width > 585
                              ?  const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(flex: 2, child: NewsList()),
                              SizedBox(width: 10),
                              Expanded(flex: 1, child: QuizCard())
                            ],
                          )
                              : const Column(
                            children: [
                              NewsList(),
                              SizedBox(height: 20),
                              QuizCard(),
                            ],
                          ),
                          const SizedBox(height: 20),
                          VisitCard(
                              bgColor: const Color(0xff00bcd5).withOpacity(0.2),
                              color: const Color(0xff00bcd5)),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    const AdCard(),
                    const ContactViewWeb(),
                    const CopyRightCard()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
