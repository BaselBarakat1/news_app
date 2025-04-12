import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

class categoryItemWidget extends StatelessWidget {
CategoryModel category;
int index;
categoryItemWidget({required this.category,required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
          bottomLeft: Radius.circular(index.isEven ? 25:0),
          bottomRight: Radius.circular(index.isEven ? 0:25),
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset(category.imagePath,height: 130),
          Text(category.title,style: TextStyle(fontSize: 22,fontWeight:FontWeight.w400 ,color: Colors.white),)
        ],
      ),
    );
  }
}
