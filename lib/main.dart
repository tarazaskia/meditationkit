import 'package:flutter/material.dart';
import 'package:meditationkit/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 29, 61, 37),
      ),
      home: welcome_screen(),
    );
  }
}
