enum CategorieAnnonce { objet, service, covoiturage }

enum StatutAnnonce { disponible, reservee, terminee }

class Annonce {
  final String id;
  final String titre;
  final String? description;
  final CategorieAnnonce categorie;
  final StatutAnnonce statut;
  final String idProprietaire;

  Annonce({
    required this.id,
    required this.titre,
    this.description,
    required this.categorie,
    this.statut = StatutAnnonce.disponible,
    required this.idProprietaire,
  });

  factory Annonce.fromJson(Map<String, dynamic> json) {
    return Annonce(
      id: json['id'] as String,
      titre: json['titre'] as String,
      description: json['description'] as String?,
      categorie: CategorieAnnonce.values.byName(json['categorie'] as String),
      statut: StatutAnnonce.values.byName(json['statut'] as String),
      idProprietaire: json['idProprietaire'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titre': titre,
      'description': description,
      'categorie': categorie.name,
      'statut': statut.name,
      'idProprietaire': idProprietaire,
    };
  }
}