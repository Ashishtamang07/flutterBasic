import 'package:flutter/material.dart';
import 'package:test_app/pages/login.dart';
import './pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // int age = 24;
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // darkTheme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my app'),
        ),
        body: const Center(
          child: Text("hello ashish"),
        ),
        drawer: const Drawer(),
      ),
      initialRoute: '/login',
      routes: {
        "/home": (context) => const Home(),
        "/login": (context) => const Login(),
      },
    );
  }
}
