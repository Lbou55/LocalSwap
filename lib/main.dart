import 'package:flutter/material.dart';
import 'screens/ecran_accueil.dart';

const Color couleurGraine = Color(0xFF2E7D6B);

void main() {
  runApp(const LocalSwapApp());
}

class LocalSwapApp extends StatelessWidget {
  const LocalSwapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LocalSwap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: couleurGraine),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: couleurGraine,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const EcranAccueil(),
    );
  }
}