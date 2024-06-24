// import 'package:flutter/animation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_farmer/data/products.dart';
// import 'package:flutter_farmer/models/product.dart';
// import 'package:flutter_farmer/widgets/product_card.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';


class firebasePage extends StatefulWidget {
  const firebasePage({super.key});

  @override
  State<firebasePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<firebasePage> {
  final _productStream = FirebaseFirestore.instance.collection("products").snapshots();
  late String temp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Products:"),
        ),
        body: StreamBuilder(
          stream: _productStream,
          builder:(context, snapshot) {
            if(snapshot.hasError) {
              return const Text("Connection Error");
            }

            if(snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            var docs = snapshot.data!.docs;
            // return Text('${docs.length}');

            return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.production_quantity_limits_outlined),
                  title: Text(docs[index]['name']),
                  subtitle: Text('${docs[index]['description']}'),
                );
              }
              );
          },
        )
    );
  }
}