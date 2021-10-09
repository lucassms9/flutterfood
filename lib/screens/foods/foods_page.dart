import 'package:flutter/material.dart';
import 'package:flutterfood/screens/foods/widgets/categories.dart';
import '../../models/Category.dart';
import '../../models/Food.dart';

class FoodsScreen extends StatefulWidget {
  FoodsScreen({Key? key}) : super(key: key);

  @override
  _FoodsScreenState createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  List<Category> _categories = [
    Category(name: 'Salgados', description: 'asdsa', idenfity: 'asda'),
    Category(name: 'Refri', description: 'asdsa', idenfity: 'asda'),
    Category(name: 'Doces', description: 'asdsa', idenfity: 'asda'),
    Category(name: 'Pizzas', description: 'asdsa', idenfity: 'asda'),
  ];
  List<Food> _foods = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estabelecimento'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildFoods(),
    );
  }

  Widget _buildFoods() {
    return Column(
      children: <Widget>[
        Categories(_categories),
      ],
    );
  }
}
