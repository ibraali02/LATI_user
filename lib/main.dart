import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/home_page.dart';
import 'package:untitled9/home_screen.dart';
import 'login_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();


   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  const  HomeScreen(), // Default page is the login screen
    );
  }
}