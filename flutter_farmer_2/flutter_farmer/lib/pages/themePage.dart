import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farmer/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class themePage extends StatelessWidget {
  const themePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
          ),
        padding: const EdgeInsets.all(16),
        margin: const  EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dark Mode", style: TextStyle(fontWeight: FontWeight.bold)),

            CupertinoSwitch(
              value: 
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode, 
              onChanged: (value) => 
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}