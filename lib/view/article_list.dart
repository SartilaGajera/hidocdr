import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/controller/article_controller.dart';
import '../utils/widget/custom_text.dart';

class ArticleList extends StatefulWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  final controller = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 4, offset: const Offset(0, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child: Image.network(
              controller.articleList['articleImg'],
              height: 200,
              width: Get.width,
              fit: BoxFit.fill,
              loadingBuilder:
                  (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, object, e) => Container(
                height: 200,
                width: Get.width,
                color: Colors.grey.withOpacity(0.6),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: customSubTitle(title: controller.articleList['articleTitle']),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              controller.articleList['articleDescription'],
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: -0.2,
                  height: 1.7),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: customReadMore(title: "read full article to earn points", size: 14.0),
              )),
              ClipRRect(
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(12)),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  color: const Color(0xff00bcd5),
                  child: Column(
                    children: [
                      customDesc(title: "Points", color: Colors.white),
                      customSubTitle(
                          title: controller.articleList['rewardPoints'], color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ArticleListWeb extends StatefulWidget {
  final ArticleController controller;
  const ArticleListWeb({Key? key, required this.controller}) : super(key: key);

  @override
  State<ArticleListWeb> createState() => _ArticleListWebState();
}

class _ArticleListWebState extends State<ArticleListWeb> {


  @override
  Widget build(BuildContext context) {
debugPrint("hjgjg${widget.controller.articleList['articleImg']}");

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
            Image.network(
              widget.controller.articleList['articleImg'],
              height: 300,
             fit: BoxFit.fill,
              loadingBuilder:
                  (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, object, e) => Container(
                color: Colors.grey.withOpacity(0.6),
                height: 300,
              ),
             ),
            // :SizedBox(),
              ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  color: const Color(0xff00bcd5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customDesc(title: "Points", color: Colors.white),
                      customSubTitle(
                          title: widget.controller.articleList['rewardPoints'], color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: customSubTitle(title: widget.controller.articleList['articleTitle']),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    widget.controller.articleList['articleDescription'],
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: -0.2,
                        height: 1.7),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: customReadMore(title: "read full article to earn points", size: 14.0),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: customDesc(
                          title: "Published Date : 27 May 2023", size: 14.0, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
