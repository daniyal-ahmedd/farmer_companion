// import 'package:flutter/animation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_farmer/data/products.dart';
// import 'package:flutter_farmer/models/product.dart';
import 'package:flutter_farmer/widgets/product_card.dart';
import 'package:flutter_iconly/flutter_iconly.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final _productStream = FirebaseFirestore.instance.collection("products").snapshots();
  late String temp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Read from firestore"),
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

// class ExplorePage extends StatelessWidget {
//   const ExplorePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           //Fliter and Search Text filed
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                         hintText: "Search here...",
//                         isDense: true,
//                         contentPadding: const EdgeInsets.all(12),
//                         border: OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Colors.grey.shade300,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(99),
//                           ),
//                         ),
//                         prefixIcon: Icon(IconlyLight.search)),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 12),
//                   child: IconButton.filled(
//                     onPressed: () {},
//                     icon: const Icon(IconlyLight.filter),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           //CONSULTATION CARD
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: SizedBox(
//               height: 170,
//               child: Card(
//                 color: Colors.green.shade50,
//                 elevation: 0.1,
//                 shadowColor: Colors.green.shade50,
//                 child: Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Row(
//                     children: [
//                       //Text
//                       Flexible(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Free Consulation",
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleLarge!
//                                   .copyWith(
//                                     color: Colors.green.shade700,
//                                   ),
//                             ),
//                             Text("Get free support from our customer service"),
//                             FilledButton(
//                                 onPressed: () {}, child: Text("Call now"))
//                           ],
//                         ),
//                       ),
//                       //Image
//                       Image.asset(
//                         'assets/contact_us.png',
//                         width: 140,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Featured Products",
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text("See all"),
//               ),
//             ],
//           ),

//           //Featured Products
//           GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: products.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//               childAspectRatio: 0.96,
//             ),
//             itemBuilder: (context, index) {
//               return ProductCard(
//                 product: products[index],
//                 );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }