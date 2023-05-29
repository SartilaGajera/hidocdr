import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: Get.height / 5.3,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              decoration: const BoxDecoration(
                color: Color(0xffd0f1f6),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: const Text(
                "hidoc",
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontSize: 22, color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
                child: const Center(
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Text(
                "Articles".toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(width: 50.0),
            ],
          ),
        ],
      ),
    );
  }
}
