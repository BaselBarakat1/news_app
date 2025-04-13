import 'package:flutter/material.dart';
import 'package:news_app/api_manager/api_manager.dart';
import 'package:news_app/model/source_response/Source.dart';
import 'package:news_app/ui/home/news/news_item_widget.dart';

class newsListWidget extends StatelessWidget {
Source source;
newsListWidget({required this.source});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getNews(source.id!),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(color: Color(0xff39A552),));
          }
          if(snapshot.hasError || snapshot.data?.status == 'error'){
            Center(
              child: Column(
                children: [
                  Text(snapshot.data?.message ?? snapshot.error.toString() ),
                  ElevatedButton(onPressed: () {}, child: Text('Try again'))
                ],
              ),
            );
          }
          var newsList = snapshot.data?.articles;
          return Expanded(child: ListView.builder(itemBuilder: (context, index) => newsItemWidget(news: newsList![index]),
            itemCount: newsList?.length,));
        },
    );
  }
}
