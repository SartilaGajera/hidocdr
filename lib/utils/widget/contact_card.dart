import 'package:flutter/material.dart';


class ContactCard extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final IconData icon;

  const ContactCard({Key? key, required this.text, required this.color, required this.bgColor, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          color: bgColor,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: color),
                child:  Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
              ),
               const SizedBox(height: 5),
              Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:  TextStyle(  color: color,
                    fontWeight: FontWeight.w400, fontSize: 10,letterSpacing: -0.2,height: 1.1),
              )
            ],
          ),
        ));
  }
}
