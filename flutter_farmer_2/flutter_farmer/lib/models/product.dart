// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:convert';


class Product {
  //  String id;
   String name = "";
   String description = "";
   String image = "";
   double price = 0.0;
   String unit = "";
   double rating = 0.0;

   Product({
    // this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.unit,
    required this.rating,
  });

  // toJson() {
  //   return {
  //   // "id": id,
  //   "image": 
  //   "name": name, 
  //   "description": description, 
  //   "price":price, 
  //   "unit": unit, 
  //   "rating": rating
  //   };
  // }

  Product.fromJsonMap(Map<String, dynamic> dataMap) {
    // id = dataMap['id'].toString() ?? "";
    image = dataMap['imageURL'] ?? "";
    name = dataMap['name'] ?? "";
    description = dataMap['description'] ?? "";
    price = dataMap['price'] ?? double;
    unit = dataMap['unit'] ?? "";
    rating = dataMap['rating'] ?? double;

  }

  // factory Product.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
  //    data = document.data()!;
  //   return Product(
  //     id: document.id,
  //     name: data["name"], 
  //     description: data["description"], 
  //     image: data["image"], 
  //     price: data["price"], 
  //     unit: data["unit"], 
  //     rating: data["rating"]);
  // }
}
