
import 'package:flutter_farmer/pages/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
// import './pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_farmer/themes/theme_provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import './firebase_options.dart';
import './pages/firebasePage.dart';
// import './themes/dark_mode.dart';
// import './themes/light_mode.dart';
import './pages/themePage.dart';

Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agric Plant',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        "/firebaseProducts":(context) => firebasePage(),
        "/Theme":(context) => themePage(),
      },
      home: const WelcomePage(),
    );
  }
}
