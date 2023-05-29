import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/controller/article_controller.dart';
import 'package:hidoc/utils/widget/custom_text.dart';

class HidocbulletinList extends StatefulWidget {
  const HidocbulletinList({Key? key}) : super(key: key);

  @override
  State<HidocbulletinList> createState() => _HidocbulletinListState();
}

class _HidocbulletinListState extends State<HidocbulletinList> {
  final controller = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customTitle(title: "Hidoc Bulletin"),
        Obx(()=>
          controller.bulletinList.isNotEmpty? ListView.builder(
              padding: const EdgeInsets.only(top: 15),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.bulletinList.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 7,
                      width: Get.width / 4,
                      color: const Color(0xff00bcd5),
                    ),
                    const SizedBox(height: 10),
                    customSubTitle(title: controller.bulletinList[index]['articleTitle']),
                    const SizedBox(height: 10),
                    customDesc(title: controller.bulletinList[index]['articleDescription']),
                    const SizedBox(height: 8),
                    customReadMore(title: "read more"),
                    const SizedBox(height: 15),
                  ],
                );
              }):const SizedBox(),
        ),
      ],
    );
  }
}
