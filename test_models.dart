import 'lib/models/models.dart';

void main() {
  final u = Utilisateur(id: 'u1', nom: 'Sami');
  print(u.toJson());

  final a = Annonce(
    id: '1',
    titre: 'Perceuse',
    categorie: CategorieAnnonce.objet,
    idProprietaire: u.id,
  );
  print(a.toJson());

  final e = Echange(
    id: 'e1',
    idAnnonce: a.id,
    idDemandeur: 'u2',
    dateEchange: DateTime.now(),
  );
  final e2 = Echange.fromJson(e.toJson());
  print(e2.dateEchange);
}