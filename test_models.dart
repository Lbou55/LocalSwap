import 'lib/models/models.dart';

void main() {
  final a = Annonce(
    id: '1',
    titre: 'Perceuse',
    categorie: CategorieAnnonce.objet,
    idProprietaire: 'u1',
  );
  print(a.toJson());

  final b = Annonce.fromJson(a.toJson());
  print(b.titre);
  print(b.statut);
}