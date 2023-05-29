import 'package:flutter/material.dart';

import 'contact_card.dart';
import 'custom_text.dart';

class ContactViewWeb extends StatelessWidget {
  const ContactViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 620
        ? Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: const Color(0xff091734),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("asset/logo.png"),
                  const SizedBox(height: 10),
                  customDesc(
                      max: 6,
                      title:
                      "#1 Medical App for Doctors in india with 800K Monthly Users",
                      color: Colors.white,
                      size: 12),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'asset/fb.png',
                            scale: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'asset/link.png',
                            scale: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'asset/insta.png',
                            scale: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'asset/utube.png',
                            scale: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(width: 20),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "REACH US",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  customDesc(
                      title:
                      "Please contact below details for any other information.",
                      color: Colors.white,
                      size: 14),
                  const SizedBox(height: 20),
                  customSubTitle(
                      title: "Email",
                      color: const Color(0xff00bcd5),
                      size: 12),
                  customDesc(
                      title: "info@hidoc.co",
                      color: Colors.white,
                      size: 14),
                  const SizedBox(height: 20),
                  customSubTitle(
                      title: "Address",
                      color: const Color(0xff00bcd5),
                      size: 12),
                  customDesc(
                      title:
                      "Infedis Infotech LLP.Office 108, Suyog Center, Gultekdi, Pune- 411 037\nToll Free : 1800-202-5091",
                      color: Colors.white,
                      size: 14),
                ],
              )),
          const SizedBox(width: 20),
          const Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HIDOC TO FEATURES",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        children: [
                          ContactCard(
                              text: "Social Network",
                              color: Color(0xfff44336),
                              bgColor: Color(0xfffdd9d7),
                              icon: Icons.social_distance),
                          ContactCard(
                              text: "Case Presentation",
                              color: Color(0xffffab40),
                              bgColor: Color(0xffffeed9),
                              icon: Icons.copy),
                          ContactCard(
                              text: "Quizzes",
                              color: Color(0xff448aff),
                              bgColor: Color(0xffdae8ff),
                              icon: Icons.military_tech),
                          ContactCard(
                              text: "Articles",
                              color: Color(0xff4caf50),
                              bgColor: Color(0xffdbefdc),
                              icon: Icons.article_outlined)
                        ],
                      ),
                      Row(
                        children: [
                          ContactCard(
                              text: "Drugs",
                              color: Color(0xff40c4ff),
                              bgColor: Color(0xffd9f3ff),
                              icon: Icons.tablet),
                          ContactCard(
                              text: "Webinar",
                              color: Color(0xff40c4ff),
                              bgColor: Color(0xffd9f3ff),
                              icon: Icons.video_camera_back_outlined),
                          ContactCard(
                              text: "Calculators",
                              color: Color(0xff4caf50),
                              bgColor: Color(0xffdbefdc),
                              icon: Icons.calculate),
                          ContactCard(
                              text: "Guidelines",
                              color: Color(0xffffab40),
                              bgColor: Color(0xffffeed9),
                              icon: Icons.article_outlined),
                        ],
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    )
        : const SizedBox();
  }
}
