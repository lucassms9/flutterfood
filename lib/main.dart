import 'package:flutter/material.dart';
import './screens/auth/login_page.dart';

void main() => runApp(FlutterFoodApp());

class FlutterFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'FlutterFood',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(147, 70, 248, 1),
          backgroundColor: Colors.white,
          colorScheme: ColorScheme.dark(),
          brightness: Brightness.dark),
      home: LoginScrenn(),
    );
  }
}
