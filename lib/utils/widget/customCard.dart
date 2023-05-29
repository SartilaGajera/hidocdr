import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const CustomCard({Key? key, required this.title, required this.subTitle, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
        width: 50,
        padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Colors.blue.withOpacity(0.15)),
          child:  Center(
            child: Icon(
             icon,
              color: Colors.blue,
size: 30,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(flex:2,child: customSubTitle( title:title,)),
        Expanded(flex: 4,
          child: customSubTitle(title: subTitle, color: Colors.black.withOpacity(0.4),size: 16.0,weight: FontWeight.w400),
        ),
      ],
    );
  }
}
