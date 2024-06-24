import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_farmer/data/products.dart';
import 'package:flutter_farmer/widgets/cart_item.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the first 4 products from the list to display in the cart
    final cartItems = products.take(4).toList();
    // Calculate the total price of the items in the cart
    final totalPrice = cartItems
        .map((e) => e.price)
        .reduce((value, element) => value + element);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Generate a list of CartItem widgets with padding
          ...List.generate(cartItems.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CartItem(cartItem: cartItems[index]),
            );
          }),
          const SizedBox(height: 15),
          // Display the total price and item count
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total (${cartItems.length})"),
              Text(
                "\$$totalPrice",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // Button to proceed to checkout
          FilledButton.icon(
            onPressed: () {
              // Show a snackbar with a message when the button is pressed
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Your Items have been confirmed.'),
                ),
              );
            },
            icon: Icon(IconlyBold.arrowRight),
            label: Text("Proceed to checkout"),
          )
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_farmer/data/products.dart';
// import 'package:flutter_farmer/widgets/cart_item.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';

// class CartPage extends StatelessWidget {
//   const CartPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cartItems = products.take(4).toList();
//     final totalPrice = cartItems
//         .map((e) => e.price)
//         .reduce((value, element) => value + element);

//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.all(16),
//         children: [
//           ...List.generate(cartItems.length, (index) {
//             return Padding(
//               padding: const EdgeInsets.only(bottom: 10),
//               child: CartItem(cartItem: cartItems[index]),
//             );
//           }),
//           const SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Total (${cartItems.length})"),
//               Text(
//                 "\$$totalPrice",
//                 style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                     fontWeight: FontWeight.bold,
//                     color: Theme.of(context).colorScheme.primary),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           FilledButton.icon(
//               onPressed: () {},
//               icon: Icon(IconlyBold.arrowRight),
//               label: Text("Proceed to checkoutf"))
//         ],
//       ),
//     );
//   }
// }