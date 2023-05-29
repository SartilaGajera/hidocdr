import 'package:flutter/material.dart';

import 'customCard.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.4), width: 1.3)),
      child: Column(
        children: [
          const CustomCard(
              title: "quizzes : ",
              subTitle: "participate and win exciting prizes",
              icon: Icons.military_tech),
          Divider(color: Colors.black.withOpacity(0.4)),
          const CustomCard(
              title: "Medical\ncalculators : ",
              subTitle: "get access to 800+ evidence based on calculators",
              icon: Icons.calculate),
          Divider(color: Colors.black.withOpacity(0.4)),
        ],
      ),
    );
  }
}
