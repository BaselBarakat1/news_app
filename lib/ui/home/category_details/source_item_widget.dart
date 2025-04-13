import 'package:flutter/material.dart';
import 'package:news_app/model/source_response/Source.dart';

class sourceItemWidget extends StatelessWidget {
Source source;
bool isSelected;
sourceItemWidget({required this.source,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: isSelected? Color(0xff39A552) : Colors.transparent ,
        border: Border.all(
          color: Color(0xff39A552),
          width: 2.3
        ),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Text(source.name ??'',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:14 ,color: isSelected? Colors.white : Color(0xff39A552) )),
    );
  }
}
