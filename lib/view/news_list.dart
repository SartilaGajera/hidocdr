import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/controller/article_controller.dart';

import '../utils/widget/custom_text.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  final controller = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MediaQuery.of(context).size.width > 585
              ? const SizedBox(): Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: customSubTitle(title: "news"),
          ),
          Obx(()=>
             controller.newsList.isNotEmpty? ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return MediaQuery.of(context).size.width > 585
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex:1,
                              child: Column(
                                children: [ Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                                  child: customSubTitle(title: "news"),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(
                                      controller.newsList[index]['description'],
                                      maxLines: 10,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          letterSpacing: -0.2,
                                          height: 2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(flex:1,
                              child: Image.network(
                                controller.newsList[index]['urlToImage'],

                                width: Get.width,
                                fit: BoxFit.fill,
                                loadingBuilder: (BuildContext context, Widget child,
                                    ImageChunkEvent? loadingProgress) {
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
                                  width: Get.width,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                controller.newsList[index]['description'],
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: -0.2,
                                    height: 2),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Image.network(
                              controller.newsList[index]['urlToImage'],
                              height: 200,
                              width: Get.width,
                              fit: BoxFit.fill,
                              loadingBuilder: (BuildContext context, Widget child,
                                  ImageChunkEvent? loadingProgress) {
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
                              errorBuilder: (context, object, e) => Center(
                                child: Container(
                                  height: 200,
                                  width: Get.width,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        );
                }):const SizedBox(),
          ),
        ],
      ),
    );
  }
}
