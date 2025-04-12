import 'package:flutter/material.dart';
import 'package:news_app/ui/home/categories_tab_widget/category_item_widget.dart';
import '../../../model/category_model.dart';

typedef OnCategoryItemClicked = void Function(CategoryModel category);
class categoriesTabWidget extends StatelessWidget {
  OnCategoryItemClicked onCategoryItemClicked;
  categoriesTabWidget({required this.onCategoryItemClicked});
List<CategoryModel> categoriesList = CategoryModel.getAllCategories();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pick your category\nof interest',style: TextStyle(fontSize: 22,fontWeight:FontWeight.w700 ,color:Color(0xff4F5A69) ),),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing:20,crossAxisSpacing: 25 ,),
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                     onCategoryItemClicked(categoriesList[index]);
                    },
                    child: categoryItemWidget(category: categoriesList[index], index: index)),
              itemCount:categoriesList.length ,
            ),
          )
        ],
      ),
    );
  }
}
