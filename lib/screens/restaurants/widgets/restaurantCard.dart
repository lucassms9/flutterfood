// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RestaurantCard extends StatefulWidget {
  final String uuid;
  final String name;
  final String image;
  final String contact;

  RestaurantCard(
      {this.uuid = '', this.name = '', this.image = '', this.contact = ''});

  @override
  _restaurantCard createState() => _restaurantCard();
}

class _restaurantCard extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    print(widget.name);
    return GestureDetector(
      onTap: () {
        print(widget.name);
        Navigator.pushNamed(context, '/foods');
      },
      child: Container(
        padding: EdgeInsets.only(top: 2, right: 1, left: 1),
        child: Card(
          elevation: 2.5,
          child: Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: (Colors.grey[200])!),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 80,
                      child: ClipOval(
                          child: CachedNetworkImage(
                        imageUrl: widget.image != ''
                            ? widget.image
                            : 'http://larafood.test/imgs/IconeFlutterFood.png',
                        placeholder: (context, url) => Container(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            Center(child: Icon(Icons.error)),
                      )),
                    ),
                    VerticalDivider(color: Colors.black54),
                    Expanded(
                        child: Text(widget.name,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
