import 'package:flutter/material.dart';
import 'package:news_app/ui/home/categories_tab_widget/categories_tab_widget.dart';
import 'package:news_app/ui/home/settings_tab_widget/settings_tab_widget.dart';
typedef OnDrawerItemClicked = void Function(DrawerMenueItem);
class HomeDrawer extends StatelessWidget {
  OnDrawerItemClicked  onDrawerItemClicked;

  HomeDrawer({required this.onDrawerItemClicked});
  static const int categories = 1;
  static const int settings = 2;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
         Container(
           alignment: Alignment.center,
           padding: EdgeInsets.symmetric(vertical: 50),
             width: double.infinity,
             color: Color(0xff39A552),
             child: Text('News App!',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),)),
          InkWell(
            onTap: () {
             onDrawerItemClicked(DrawerMenueItem.categories);
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.view_list_rounded,size: 34,color: Colors.black,),
                  SizedBox(width: 11.5,),
                  Text('Categories',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
             onDrawerItemClicked(DrawerMenueItem.settings);
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.settings,size: 34,color: Colors.black,),
                  SizedBox(width: 11.5,),
                  Text('Settings',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum DrawerMenueItem{
  categories,
  settings,
}
