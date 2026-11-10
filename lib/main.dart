import 'package:flutter/material.dart';
import 'screens/ecran_accueil.dart';
import 'theme/theme_localswap.dart';

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
      theme: construireTheme(Brightness.light),
      darkTheme: construireTheme(Brightness.dark),
      themeMode: ThemeMode.system,
      home: const EcranAccueil(),
    );
  }
}
