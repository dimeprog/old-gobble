// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Product> productsFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productsToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.description,
    required this.slug,
    required this.price,
    required this.image,
    required this.category,
    required this.averageReview,
  });

  int id;
  DateTime createdAt;
  DateTime updatedAt;
  String name;
  String description;
  String slug;
  int price;
  String image;
  String category;
  double averageReview;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        name: json["name"],
        description: json["description"],
        slug: json["slug"],
        price: json["price"],
        image: json["image"],
        category: json["category"],
        averageReview: json["averageReview"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "name": name,
        "description": description,
        "slug": slug,
        "price": price,
        "image": image,
        "category": category,
        "averageReview": averageReview,
      };
}
