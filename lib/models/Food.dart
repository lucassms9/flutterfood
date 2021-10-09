// ignore_for_file: file_names

import 'dart:convert';

class Food {
  String identify;
  String title;
  String image;
  String description;

  Food(
      {this.identify = '',
      this.title = '',
      this.image = '',
      this.description = ''});

  factory Food.fromJson(jsonData) {
    return Food(
      identify: jsonData['identify'],
      title: jsonData['title'],
      image: jsonData['image'],
      description: jsonData['description'],
    );
  }

  toJson() {
    return jsonEncode({
      'identify': identify,
      'title': title,
      'image': image,
      'description': description,
    });
  }
}
