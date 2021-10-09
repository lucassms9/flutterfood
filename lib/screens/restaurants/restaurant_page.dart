import 'package:flutter/material.dart';
import 'package:flutterfood/models/Restaurant.dart';
import 'package:flutterfood/screens/restaurants/widgets/restaurantCard.dart';

class RestaurantsPage extends StatefulWidget {
  RestaurantsPage({Key? key}) : super(key: key);

  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<Restaurant> _restaurants = [
    Restaurant(
        name: 'Nome4',
        image: '',
        contact: 'lucassms9@hotmail.com',
        uuid: '213123123-123123-123'),
    Restaurant(
        name: 'Nome1',
        image: '',
        contact: 'lucassms9@hotmail.com',
        uuid: '213123123-123123-123'),
    Restaurant(
        name: 'Nome2',
        image: '',
        contact: 'lucassms9@hotmail.com',
        uuid: '213123123-123123-123')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
          title: Text('Restaurantes'),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor),
      body: _buildRestaurants(context),
    );
  }

  Widget _buildRestaurants(context) {
    return Container(
      child: ListView.builder(
          itemCount: _restaurants.length,
          itemBuilder: (context, index) {
            final Restaurant restaurant = _restaurants[index];
            return RestaurantCard(
              name: restaurant.name,
              image: restaurant.image,
              contact: restaurant.contact,
              uuid: restaurant.uuid,
            );
          }),
    );
  }
}
