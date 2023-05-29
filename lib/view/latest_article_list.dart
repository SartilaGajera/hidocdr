import 'package:flutter/material.dart';


import '../utils/widget/custom_text.dart';

class LatestArticleList extends StatefulWidget {
  final data;
  final title;
  const LatestArticleList({Key? key, this.data, this.title}) : super(key: key);

  @override
  State<LatestArticleList> createState() => _LatestArticleListState();
}

class _LatestArticleListState extends State<LatestArticleList> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.4))),
      child: Column(

        children: [
          customSubTitle(title: widget.title),
          ListView.builder(
              padding: const EdgeInsets.only(top: 10,left: 5,right: 5),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.data.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Divider(color:  Colors.black.withOpacity(0.4)),
                    const SizedBox(height: 10),
                    customDesc(title: widget.data[index]['articleTitle'],color:Colors.black.withOpacity(0.4) ),
                    const SizedBox(height: 10),


                  ],
                );
              }),
        ],
      ),
    );
  }
}
