import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_farmer/pages/orders_page.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Profile Image
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 15),
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: CircleAvatar(
                radius: 60,
                foregroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg'),
              ),
            ),
          ),
          Center(
            child: Text(
              "Ameer Hamza",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Center(
            child: Text(
              "ameerhamza@gmail.com",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 25),
          ListTile(
            title: Text("My orders"),
            leading: Icon(IconlyLight.bag),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrdersPage()));
            },
          ),
          ListTile(
            title: Text("About us"),
            leading: Icon(IconlyLight.infoSquare),
            onTap: () {},
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(IconlyLight.logout),
            onTap: () {},
          )
        ],
      ),
    );
  }
}