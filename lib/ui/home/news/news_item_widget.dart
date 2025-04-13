import 'package:flutter/material.dart';
import 'package:news_app/model/news_response/News.dart';

class newsItemWidget extends StatelessWidget {
News news;
newsItemWidget({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius:BorderRadius.circular(12) ,
              child: Image.network(news.urlToImage ?? '')),
          SizedBox(height: 10,),
          Text(news.title ?? '',style: TextStyle(fontSize:15 ,fontWeight:FontWeight.w500 ,color:Color(0xff42505C) )),
          SizedBox(height: 10,),
          Text(news.description ?? '',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black)),
          Text(news.publishedAt ?? '',style: TextStyle(fontSize:13 ,fontWeight:FontWeight.w400 ,color:Color(0xffA3A3A3) ),textAlign: TextAlign.end),
        ],
      ),
    );
  }
}
