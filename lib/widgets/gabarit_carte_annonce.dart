import 'package:flutter/material.dart';

class GabaritCarteAnnonce extends StatelessWidget {
  const GabaritCarteAnnonce({super.key});

  @override
  Widget build(BuildContext context) {
    final couleurs = Theme.of(context).colorScheme;
    final textes = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: couleurs.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: couleurs.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 120,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  color: couleurs.primaryContainer,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.inventory_2_outlined,
                    size: 48,
                    color: couleurs.onPrimaryContainer,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Disponible',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perceuse sans fil',
                  style: textes.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  'Prêtée pour un week-end, avec 2 batteries',
                  style: textes.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(Icons.person_outline, size: 18),
                    const SizedBox(width: 4),
                    Text('Amira', style: textes.bodySmall),
                    const Spacer(),
                    const FilledButton.tonal(
                      onPressed: null,
                      child: Text('Réserver'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
