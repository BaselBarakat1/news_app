import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/model/source.dart';
import 'package:news_app/ui/home/category_details/sources_tab_widget.dart';

class categoryDetails extends StatelessWidget {
CategoryModel category;
categoryDetails({required this.category});
List<Source> sourcesList = [
  Source(id: 'cnn', title: 'CNN'),
  Source(id: 'cnn', title: 'CNN'),
  Source(id: 'cnn', title: 'CNN'),
  Source(id: 'bein sport', title: 'Bein Sport'),
  Source(id: 'bein sport', title: 'Bein Sport'),
  Source(id: 'bein sport', title: 'Bein Sport'),
  Source(id: 'bbc', title: 'BBC'),
  Source(id: 'bbc', title: 'BBC'),
  Source(id: 'bbc', title: 'BBC'),
  Source(id: 'aljazira', title: 'AlJazira'),
  Source(id: 'aljazira', title: 'AlJazira'),
  Source(id: 'aljazira', title: 'AlJazira'),
];
  @override
  Widget build(BuildContext context) {
    return sourcesTabWidget(Sources: sourcesList,);
  }
}
