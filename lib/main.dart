import 'package:flutter/material.dart';

import 'package:flutter_examples/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
          ), colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple, 
            brightness: Brightness.dark,
          ).copyWith(background: Color.fromARGB(255, 252, 224, 224)),
        ),
        debugShowCheckedModeBanner: false,
        home: const NavigationBarApp());
  }
}
