import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdCard extends StatelessWidget {
  const AdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey.withOpacity(0.5),
      child: Center(
        child: SizedBox(
         
          width: Get.width/1.4,
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "asset/hidoc_ad.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),
              const SizedBox(width: 20),
              Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "asset/ad.jpg",
                      fit: BoxFit.fill,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
