class Echange {
  final String id;
  final String idAnnonce;
  final String idDemandeur;
  final DateTime dateEchange;

  Echange({
    required this.id,
    required this.idAnnonce,
    required this.idDemandeur,
    required this.dateEchange,
  });

  factory Echange.fromJson(Map<String, dynamic> json) {
    return Echange(
      id: json['id'] as String,
      idAnnonce: json['idAnnonce'] as String,
      idDemandeur: json['idDemandeur'] as String,
      dateEchange: DateTime.parse(json['dateEchange'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idAnnonce': idAnnonce,
      'idDemandeur': idDemandeur,
      'dateEchange': dateEchange.toIso8601String(),
    };
  }
}