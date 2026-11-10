class Echange {
  const Echange({
    required this.id,
    required this.idAnnonce,
    required this.idDemandeur,
    required this.dateEchange,
  });

  final String id;
  final String idAnnonce;
  final String idDemandeur;
  final DateTime dateEchange;

  factory Echange.fromJson(Map<String, dynamic> json) {
    if (json case {
      'id': String id,
      'idAnnonce': String idAnnonce,
      'idDemandeur': String idDemandeur,
      'dateEchange': String dateEchange,
    }) {
      return Echange(
        id: id,
        idAnnonce: idAnnonce,
        idDemandeur: idDemandeur,
        dateEchange: DateTime.parse(dateEchange),
      );
    }
    throw FormatException('Echange : JSON invalide : $json');
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'idAnnonce': idAnnonce,
    'idDemandeur': idDemandeur,
    'dateEchange': dateEchange.toIso8601String(),
  };

  @override
  String toString() =>
      'Echange($id, annonce $idAnnonce, demandeur $idDemandeur)';
}
