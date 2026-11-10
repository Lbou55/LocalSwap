// ignore_for_file: avoid_print
// Script en ligne de commande : print est autorisé ici (interdit dans lib/).

import 'package:localswap/data/annonces_test.dart';
import 'package:localswap/models/models.dart';

Future<void> main() async {
  // 1) Chargement et temps écoulé
  final chrono = Stopwatch()..start();
  final annonces = await chargerAnnonces();
  chrono.stop();
  print('1) ${annonces.length} annonces en ${chrono.elapsedMilliseconds} ms');

  // 2) Annonces réservables
  final reservables = annonces.where(peutReserver).toList();
  print('2) Réservables : ${reservables.length}');

  // 3) Nombre d'annonces par catégorie
  final parCategorie = <CategorieAnnonce, int>{};
  for (final a in annonces) {
    parCategorie[a.categorie] = (parCategorie[a.categorie] ?? 0) + 1;
  }
  parCategorie.forEach((cat, nb) => print('3) ${cat.libelle} : $nb'));

  // 4) Aller-retour JSON sur toutes les annonces
  final roundTripOk = annonces.every((a) {
    final copie = Annonce.fromJson(a.toJson());
    return copie.id == a.id &&
        copie.titre == a.titre &&
        copie.description == a.description &&
        copie.categorie == a.categorie &&
        copie.statut == a.statut &&
        copie.idProprietaire == a.idProprietaire;
  });
  print('4) Aller-retour JSON identique : $roundTripOk');

  // 5) JSON sans titre : on attend une FormatException
  try {
    Annonce.fromJson({
      'id': 'x',
      'categorie': 'objet',
      'statut': 'disponible',
      'idProprietaire': 'u1',
    });
    print('5) ❌ aucune exception levée');
  } on FormatException catch (e) {
    print('5) ✅ FormatException : ${e.message}');
  }
}