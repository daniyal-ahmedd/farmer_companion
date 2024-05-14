import 'package:flutter/material.dart';
import 'package:flutter_farmer/pages/home_page.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset('assets/onboarding.png',
              width: 380,
              ),
              const Spacer(),
              Text(
                "Welcome to FarmerFriend",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text("Get your agriculture products from the comfort of your home. Just a few clicks away."),
              ),
              FilledButton.tonalIcon(
                onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(IconlyLight.login),
              label: const Text("Continue with Google"))
          ],)
        )
        )
    );
  }
}