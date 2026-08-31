import 'package:flutter/material.dart';

class CityModel {
  String name;
  String cityImage;
  String detailImage;
  String description;
  String category; 
  List<Map<String, dynamic>> places;

  CityModel({
    required this.name,
    required this.cityImage,
    required this.detailImage,
    required this.description,
    required this.category,
    required this.places,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      name: json["name"],
      cityImage: json["cityImage"],
      detailImage: json["detailImage"],
      description: json["description"],
      category: json["category"],
      places: List<Map<String, dynamic>>.from(json["places"]),
    );
  }
}