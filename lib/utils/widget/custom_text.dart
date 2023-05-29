import 'package:flutter/material.dart';
import 'package:get/get.dart';

Text customTitle({title}){
  return   Text(
    title.toString().capitalize??"",
    maxLines: 2,
    style: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 30,letterSpacing: -0.2),
  );
}

Text customSubTitle({title,color,size,weight}){
  return   Text(
    title.toString().capitalize??"",
    maxLines: 4,
    style:  TextStyle(
      color: color??Colors.black,
        fontWeight:weight?? FontWeight.bold, fontSize:size?? 22,letterSpacing: -0.2,wordSpacing: 1,height: 1.2,),
  );
}
Text customDesc({title,color,max,size}){
  return   Text(
    title,
    maxLines:max?? 3,
    overflow: TextOverflow.ellipsis,
    style:  TextStyle(  color: color??Colors.black,
        fontWeight: FontWeight.w400, fontSize:size?? 18,letterSpacing: -0.2,height: 1.1),
  );
}
Text customReadMore({title,size}){
  return   Text(
    title.toString().capitalize??"",
    maxLines: 2,
    style:  TextStyle(decoration: TextDecoration.underline,decorationColor: const Color(0xff00bcd5),
        fontWeight: FontWeight.w400, fontSize:size?? 18,letterSpacing: -0.2,wordSpacing: 1,height: 1.2,color: const Color(0xff00bcd5)),
  );
}
extension StringExtension on String {
  String capitalizeByWord() {
    if (trim().isEmpty) {
      return '';
    }
    return split(' ')
        .map((element) =>
    "${element[0].toUpperCase()}${element.substring(1).toLowerCase()}")
        .join(" ");
  }
}