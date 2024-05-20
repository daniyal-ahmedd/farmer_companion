import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import './firebase_helper.dart';
import '../models/product.dart';


//List<Product> products = await productHelper.getAllData();


// FutureBuilder<QuerySnapshot>(
//   future: FirebaseFirestore.instance.collection('products').get(),
//   builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//     if (snapshot.hasData) {
//       return Column(
//         children: snapshot.data?.docs?.map((doc) {
//           // your widget here(use doc data)
//           return YourWidget();
//         })?.toList() ?? [],
//       );
//     } else {
//       // or your loading widget here
//       return Container();
//     }
//   },
// );

List<Product> products = [
   Product(
    name: "Fertilizers",
    description: "Fertilizers for the crops.",
    image: 'assets/fertilizer.jpg',
    price: 50.00,
    unit: 'kg',
    rating: 4.77,
),
   Product(
    name: "Fruit",
    description: "Sample",
    image: 'assets/fruits.webp',
    price: 9.99,
    unit: 'kg',
    rating: 3.86,
  ),
   Product(
    name: "Rake",
    description: "Sample",
    image: 'assets/rake.webp',
    price: 8.44,
    unit: 'pcs',
    rating: 4.18,
  ),
   Product(
    name: "Seeds",
    description: "Sample",
    image: 'assets/seeds.jpg',
    price: 14.52,
    unit: 'kg',
    rating: 5.00,
  ),
   Product(
    name: "Shovel",
    description: "Sample",
    image: 'assets/shovel.jpg',
    price: 14.77,
    unit: 'pcs',
    rating: 5.0,
  ),
   Product(
    name: "Tomato",
    description: "Sample",
    image: 'assets/tomato.jpg',
    price: 6.84,
    unit: 'kg',
    rating: 3.22,
  ),
];
