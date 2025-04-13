import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/ui/home/categories_tab_widget/categories_tab_widget.dart';
import 'package:news_app/ui/home/category_details/category_details.dart';
import 'package:news_app/ui/home/home_drawer.dart';
import 'package:news_app/ui/home/settings_tab_widget/settings_tab_widget.dart';

class homeScreen extends StatefulWidget {
static const String routeName = 'home_screen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedWidget = categoriesTabWidget(onCategoryItemClicked: onCategoryItemClicked,);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage('assets/images/pattern.png'),fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white,size: 32),
          centerTitle: true,
          backgroundColor: Color(0xff39A552),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
          ),
          title: Text('News App',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white)),
        ),
        drawer: HomeDrawer(onDrawerItemClicked: onDrawerItemClicked ),
        body: selectedWidget,
      ),
    );
  }

late Widget selectedWidget ;

  void onDrawerItemClicked(DrawerMenueItem item) {
 if(item == DrawerMenueItem.categories){
   selectedWidget = categoriesTabWidget(onCategoryItemClicked: onCategoryItemClicked,);
 }else if(item == DrawerMenueItem.settings){
   selectedWidget = settingsTabWidget();
 }
 setState(() {

 });
  }
  void onCategoryItemClicked(CategoryModel category){
    selectedWidget = categoryDetails(category: category);
    setState(() {

    });
  }
}
