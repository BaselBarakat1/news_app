import 'package:flutter/material.dart';
import 'package:news_app/model/source_response/Source.dart';
import 'package:news_app/ui/home/category_details/source_item_widget.dart';
import 'package:news_app/ui/home/news/news_list_widget.dart';


class sourcesTabWidget extends StatefulWidget {
List<Source> Sources;

sourcesTabWidget({required this.Sources});

  @override
  State<sourcesTabWidget> createState() => _sourcesTabWidgetState();
}

class _sourcesTabWidgetState extends State<sourcesTabWidget> {
int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.Sources.length,
        child: Column(
          children: [
            TabBar(
              onTap: (newIndex) {
                selectedIndex = newIndex;
                setState(() {

                });
              },
              isScrollable: true,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                tabs:widget.Sources.map((source) => sourceItemWidget(source: source,isSelected: widget.Sources.indexOf(source) == selectedIndex,)) .toList(),
            ),
            newsListWidget(source: widget.Sources[selectedIndex])
          ],
        ),
    );
  }
}
