import 'package:flutter/material.dart';
import 'package:flutterfood/screens/auth/register_page.dart';
import 'package:flutterfood/screens/foods/foods_page.dart';
import 'package:flutterfood/screens/restaurants/restaurant_page.dart';
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
        initialRoute: '/login',
        routes: <String, WidgetBuilder>{
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/restaurants': (context) => RestaurantsPage(),
          '/foods': (context) => FoodsScreen()
        });
  }
}
