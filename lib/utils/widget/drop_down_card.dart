import 'package:flutter/material.dart';

import 'custom_text.dart';

class DropDownCard extends StatelessWidget {
  const DropDownCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color:MediaQuery.of(context).size.width > 585 ?Colors.black.withOpacity(0.1): Colors.black.withOpacity(0.2  ),
                blurRadius: 4,
                offset: const Offset(0, 2))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: customDesc(
                  title: "Critical Care",
                  color: Colors.black.withOpacity(0.6),
                  size: 16.0),
            ),
          ),
          const Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
