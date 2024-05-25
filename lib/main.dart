import 'package:flutter/material.dart';
import 'package:pasa_palabra/screens/home_screen.dart';
import 'package:pasa_palabra/ui/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pasa palabra',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(),
        ).apply(
          bodyColor: CustomColor.white,
        ),
        appBarTheme: const AppBarTheme(color: CustomColor.primaryColor),
        scaffoldBackgroundColor: CustomColor.primaryColor,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
