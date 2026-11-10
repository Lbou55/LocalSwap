enum CategorieAnnonce {
  objet('Objet'),
  service('Service'),
  covoiturage('Covoiturage');

  const CategorieAnnonce(this.libelle);
  final String libelle;
}

enum StatutAnnonce { disponible, reservee, terminee }

class Annonce {
  const Annonce({
    required this.id,
    required this.titre,
    this.description,
    required this.categorie,
    required this.statut,
    required this.idProprietaire,
  });

  final String id;
  final String titre;
  final String? description;
  final CategorieAnnonce categorie;
  final StatutAnnonce statut;
  final String idProprietaire;

  factory Annonce.fromJson(Map<String, dynamic> json) {
    if (json case {
      'id': String id,
      'titre': String titre,
      'categorie': String categorie,
      'statut': String statut,
      'idProprietaire': String idProprietaire,
    }) {
      final description = switch (json['description']) {
        null => null,
        String s => s,
        _ => throw const FormatException('Annonce : description invalide'),
      };
      return Annonce(
        id: id,
        titre: titre,
        description: description,
        categorie: CategorieAnnonce.values.byName(categorie),
        statut: StatutAnnonce.values.byName(statut),
        idProprietaire: idProprietaire,
      );
    }
    throw FormatException('Annonce : JSON invalide : $json');
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'titre': titre,
    if (description != null) 'description': description,
    'categorie': categorie.name,
    'statut': statut.name,
    'idProprietaire': idProprietaire,
  };

  @override
  String toString() =>
      'Annonce($id, $titre, ${categorie.libelle}, ${statut.name})';
}

bool peutReserver(Annonce annonce) =>
    annonce.statut == StatutAnnonce.disponible;
