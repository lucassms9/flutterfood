import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(65),
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Text(
            'SUPER FOOD',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
