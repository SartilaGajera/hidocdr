import 'package:flutter/material.dart';

import 'custom_text.dart';

class CopyRightCard extends StatelessWidget {
  const CopyRightCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MediaQuery.of(context).size.width > 620
        ? Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: const Color(0xffcfd8dc),
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customDesc(
                    title: "© Copyright 2022 ",
                    size: 12,
                    color: Colors.grey),
                customDesc(
                    title: "Infedis Infotech LLP.",
                    size: 12,
                    color: Colors.black),
              ],
            ),
            customDesc(
                title: "Terms & Conditions | Privacy Policy ",
                size: 12,
                color: Colors.grey),
          ],
        ),
      ),
    )
        : const SizedBox();
  }
}
