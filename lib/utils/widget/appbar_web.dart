import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';
List navItem = [
  'Social',
  'Cases',
  'Quizzes',
  'Articles',
  'Drugs',
  'Webinars',
  'Calculators',
  'Guidelines',
  'Surveys',
  'News',
  'Clinical Trials'
];
class AppbarWeb extends StatelessWidget {
  const AppbarWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              "asset/nav_logo.png",
              width: Get.width/10,
            ),
          ),
          MediaQuery.of(context).size.width > 585
              ? SizedBox(
            height: 100,
            width: Get.width / 1.5,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: navItem.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, i) {
                  return Center(
                      child: Row(
                        children: [
                          customDesc(
                              title: navItem[i],
                              color: i == 3 ? const Color(0xff00bcd5) : Colors.grey,
                              size: 16),
                          i == 10
                              ? const SizedBox()
                              : Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 35.0, horizontal: 10),
                            child: Container(
                              width: 1.5,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ));
                }),
          )
              : const SizedBox(),
          MediaQuery.of(context).size.width > 585
              ? Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              const SizedBox(width: 5), //,IconButton
              const Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              const SizedBox(width: 5),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'H',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(width: 10)
            ],
          )
              : Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'H',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
