import 'dart:convert';

import 'package:localswap/models/models.dart';

const String annoncesJson = '''
[
  {"id": "a1", "titre": "Perceuse sans fil", "description": "Prêtée pour un week-end, avec 2 batteries", "categorie": "objet", "statut": "disponible", "idProprietaire": "u1"},
  {"id": "a2", "titre": "Cours de guitare débutant", "description": "1 heure, chez moi ou en visio", "categorie": "service", "statut": "disponible", "idProprietaire": "u2"},
  {"id": "a3", "titre": "Covoiturage Bizerte - Tunis", "description": "Tous les lundis matin, 3 places", "categorie": "covoiturage", "statut": "reservee", "idProprietaire": "u3"},
  {"id": "a4", "titre": "Vélo de ville", "categorie": "objet", "statut": "reservee", "idProprietaire": "u1"},
  {"id": "a5", "titre": "Aide pour déménagement", "description": "Samedi après-midi", "categorie": "service", "statut": "terminee", "idProprietaire": "u4"},
  {"id": "a6", "titre": "Covoiturage vers la fac", "categorie": "covoiturage", "statut": "disponible", "idProprietaire": "u2"}
]
''';

Future<List<Annonce>> chargerAnnonces() async {
  await Future.delayed(const Duration(milliseconds: 800));

  final List<dynamic> brut = jsonDecode(annoncesJson) as List<dynamic>;

  final annonces = brut
      .map((element) => Annonce.fromJson(element as Map<String, dynamic>))
      .toList();

  return List.unmodifiable(annonces);
}
