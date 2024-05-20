// import '../models/product.dart';
// import "package:firebase_core/firebase_core.dart";
// import "package:cloud_firestore/cloud_firestore.dart";
// import "../firebase_options.dart";
// import "dart:async";


// class productHelper {
//   final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;

//   final String collectionName = "products";
//   final String collectionCounter = "productsCounter";
//   productHelper._privateConstructor();



//   static final productHelper _productHelper = 
//   productHelper._privateConstructor();
//   static bool _isFirstTime = true;
//   static Future<productHelper> getInstance() async {
//     if (_isFirstTime) {
//       await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform );

//       _isFirstTime =false;
//     }
//     return _productHelper;
//   }

//   // Future<int> existingCounter() async {
//   //   var docRef = _firestoreInstance.collection(collectionCounter).doc("counter");

//   //   var docSnapshot = await docRef.get();

//   //   if (docSnapshot.exists) {
//   //     return docSnapshot.data()?['value'] ?? 001;
//   //   }

//   //   await docRef.set({"value": 1});
//   //   return 1;

//   // }


  
//   Future<List<Product>> getAllData() async {
//     List<Product> allProductData = [];
//     var collectionSnapshot = await _firestoreInstance.collection(collectionName).get();

//     for (var doc in collectionSnapshot.docs) {
//       allProductData.add(Product.fromJsonMap(doc.data()));
//     }
//     return allProductData;
//   }

//   // Future<Map<String, dynamic>> fetchDataFromRealtimeDatabase(String path) async {
//   // final database = FirebaseFirestore.instance;
//   // final reference = database.ref(path);

//   // final snapshot = await reference.once();

//   // if (snapshot.hasData) {
//   //   return snapshot.value as Map<String, dynamic>;
//   // } else {
//   //   // Handle no data case (e.g., print message)
//   //   return {};
//   // }

//   Future<List<Map<String, dynamic>>> fetchDataFromFirestore(String collectionPath) async {
//   final firestore = FirebaseFirestore.instance;
//   final collection = firestore.collection(collectionPath);
//   final querySnapshot = await collection.get();

//   return querySnapshot.docs.map((documentSnapshot) => documentSnapshot.data()).toList();
//   }
// }

