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
    final cartItems = products.take(4).toList();
    final totalPrice = cartItems
        .map((e) => e.price)
        .reduce((value, element) => value + element);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ...List.generate(cartItems.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CartItem(cartItem: cartItems[index]),
            );
          }),
          const SizedBox(height: 15),
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
          FilledButton.icon(
              onPressed: () {},
              icon: Icon(IconlyBold.arrowRight),
              label: Text("Proceed to checkoutf"))
        ],
      ),
    );
  }
}