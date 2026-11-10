import 'package:flutter/material.dart';

class EnTeteLocalSwap extends StatelessWidget {
  const EnTeteLocalSwap({super.key});

  @override
  Widget build(BuildContext context) {
    final couleurs = Theme.of(context).colorScheme;
    final textes = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: couleurs.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.swap_horiz, color: couleurs.onPrimaryContainer),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('LocalSwap', style: textes.titleLarge),
                Text(
                  'Échangez près de chez vous',
                  style: textes.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
