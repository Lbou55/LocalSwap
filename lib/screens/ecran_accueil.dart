import 'package:flutter/material.dart';

class EcranAccueil extends StatelessWidget {
  const EcranAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    final couleur = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(title: const Text('LocalSwap')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.swap_horiz, size: 96, color: couleur),
            const SizedBox(height: 16),
            const Text('Échangez près de chez vous'),
          ],
        ),
      ),
    );
  }
}