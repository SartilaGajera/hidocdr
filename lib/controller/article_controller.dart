import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ArticleController extends GetxController {
  final bulletinList = [].obs;
  final trendingBulletinList = [].obs;
  final exploreArticleList = [].obs;
  final latestArticleList = [].obs;
  final trendingArticleList = [].obs;
  final newsList = [].obs;
  final articleList = {}.obs;

  Future<void> getArticleData() async {
    try {
      final url = Uri.parse('https://prodapi.hidoc.co:8443/HidocWebApp/api/getArticlesByUid?');
      Map<String, String> requestBody = {'sId': '500', 'uuId': "", 'userId': "423914"};
      var request = http.MultipartRequest('POST', url)..fields.addAll(requestBody);
      var response = await request.send();
      final respStr = await response.stream.bytesToString();
      var encoded = json.decode(respStr);
      bulletinList.value = encoded['data']['bulletin'];
      trendingBulletinList.value = encoded['data']['trandingBulletin'];
      exploreArticleList.value = encoded['data']['exploreArticle'];
      latestArticleList.value = encoded['data']['latestArticle'];
      trendingArticleList.value = encoded['data']['trandingArticle'];
      newsList.value = encoded['data']['news'];
      articleList.value = encoded['data']['article'];
    } catch (error) {
      print(error);
    }
  }
}
