import 'package:flutter_farmer/pages/welcome_page.dart';
// import 'package:firebase_core/firebase_core.dart';
import './pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()  {
  runApp(const MainApp());
//     await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agric Plant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const WelcomePage(),
    );
  }
}
