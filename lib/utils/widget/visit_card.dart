
import 'package:flutter/material.dart';
import 'custom_text.dart';

class VisitCard extends StatelessWidget {
  final Color? bgColor;
  final Color? color;
  const VisitCard({Key? key, this.color, this.bgColor, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      color:bgColor?? const Color(0xfffac9a1).withOpacity(0.7),
      child: Row(
        children: [
          Expanded(
            child: customSubTitle(
                title:
                "social network for doctor- a special feature on hidoc dr. ",
                size: 18.0),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:color?? const Color(0xfffd9800)),
            child: const Center(
              child: Text("visit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
