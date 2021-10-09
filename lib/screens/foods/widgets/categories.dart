import 'package:flutter/material.dart';
import 'package:flutterfood/models/Category.dart';

class Categories extends StatelessWidget {
  List<Category> categories;

  Categories(this.categories);

  @override
  Widget build(BuildContext context) {
    return Container(child: _buildCategories());
  }

  Widget _buildCategories() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final Category category = categories[index];
            return _builderCategory(category);
          }),
    );
  }

  Widget _builderCategory(Category category) {
    return Container(
        padding: EdgeInsets.only(top: 2, bottom: 2, left: 20, right: 20),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.grey)),
        child: Center(
          child: Text(
            category.name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
