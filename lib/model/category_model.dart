import 'package:flutter/material.dart';

class CategoryModel{
  String id;
  String title;
  Color backgroundColor;
  String imagePath;

  CategoryModel({required this.id,required this.title,required this.backgroundColor,required this.imagePath});

  static List<CategoryModel> getAllCategories(){
    return [
      CategoryModel(id: 'sports', title: 'Sports', backgroundColor: Color(0xffC91C22), imagePath: 'assets/images/sports.png'),
      CategoryModel(id: 'general', title: 'General', backgroundColor: Color(0xff003E90), imagePath: 'assets/images/Politics.png'),
      CategoryModel(id: 'health', title: 'Health', backgroundColor: Color(0xffED1E79), imagePath: 'assets/images/health.png'),
      CategoryModel(id: 'business', title: 'Business', backgroundColor: Color(0xffCF7E48), imagePath: 'assets/images/bussines.png'),
      CategoryModel(id: 'entertainment', title: 'Entertainment', backgroundColor: Color(0xff4882CF), imagePath: 'assets/images/environment.png'),
      CategoryModel(id: 'science', title: 'Science', backgroundColor: Color(0xffF2D352), imagePath: 'assets/images/science.png'),
      CategoryModel(id: 'technology', title: 'Technology', backgroundColor: Color(0xff39A552), imagePath: 'assets/images/science.png'),
    ];
  }
}