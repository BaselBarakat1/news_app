import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/news_response/NewsResponse.dart';
import 'package:news_app/model/source_response/SourceResponse.dart';

class ApiManager{
static const String baseUrl = 'newsapi.org';
static const String apiKey = '0b2cd9b248cb4c00813a71d50374b726';

  //https://newsapi.org/v2/top-headlines/sources?apiKey=0b2cd9b248cb4c00813a71d50374b726
static Future<SourceResponse> getSources(String categoryId) async {
  var uri = Uri.https(baseUrl,'/v2/top-headlines/sources',{
    'apiKey': apiKey,
    'category': categoryId,
  });
 var response = await http.get(uri);
 var json = jsonDecode(response.body);
 SourceResponse sourceResponse = SourceResponse.fromJson(json);
 return sourceResponse;
}
//https://newsapi.org/v2/everything?q=bitcoin&apiKey=0b2cd9b248cb4c00813a71d50374b726
static Future<NewsResponse> getNews(String sourceId) async {
  var uri = Uri.https(baseUrl,'/v2/everything',{
    'apiKey': apiKey,
    'sources': sourceId
  });
  var response = await http.get(uri);
  var json = jsonDecode(response.body);
  NewsResponse newsResponse = NewsResponse.fromJson(json);
  return newsResponse;
}
}