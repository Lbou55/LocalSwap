class Utilisateur {
  final String id;
  final String nom;
  final int reputation;

  Utilisateur({
    required this.id,
    required this.nom,
    this.reputation = 0,
  });

  factory Utilisateur.fromJson(Map<String, dynamic> json) {
    return Utilisateur(
      id: json['id'] as String,
      nom: json['nom'] as String,
      reputation: json['reputation'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nom': nom,
      'reputation': reputation,
    };
  }
}