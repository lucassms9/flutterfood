// ignore_for_file: file_names

import 'dart:convert';

class Category {
  String idenfity;
  String name;
  String description;

  Category({this.idenfity = '', this.name = '', this.description = ''});

  factory Category.fromJson(jsonData) {
    return Category(
      idenfity: jsonData['idenfity'],
      name: jsonData['name'],
      description: jsonData['description'],
    );
  }

  toJson() {
    return jsonEncode({
      'idenfity': idenfity,
      'name': name,
      'description': description,
    });
  }
}
