import 'package:flutter/material.dart';

import '../widgets/en_tete_localswap.dart';
import '../widgets/gabarit_carte_annonce.dart';

class EcranAccueil extends StatelessWidget {
  const EcranAccueil({super.key});

  void _afficherMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LocalSwap'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Rechercher',
            onPressed: () => _afficherMessage(context, 'Bientôt disponible'),
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            tooltip: 'Notifications',
            onPressed: () => _afficherMessage(context, 'Bientôt disponible'),
          ),
        ],
      ),
      body: Column(
        children: [
          const EnTeteLocalSwap(),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: GabaritCarteAnnonce(),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _afficherMessage(context, 'Publication : TP6'),
        icon: const Icon(Icons.add),
        label: const Text('Publier'),
      ),
    );
  }
}
