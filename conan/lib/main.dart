import 'package:conan/screen/start/startScreen.dart';
import 'package:flutter/material.dart';

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
      title: 'Conan Exiles Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.red,
      ),
      home: const StartScreen(),
    );
  }
}
