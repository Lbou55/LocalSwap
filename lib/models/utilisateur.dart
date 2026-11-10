class Utilisateur {
  const Utilisateur({
    required this.id,
    required this.nom,
    required this.reputation,
  }) : assert(reputation >= 0 && reputation <= 5);

  final String id;
  final String nom;
  final int reputation;

  factory Utilisateur.fromJson(Map<String, dynamic> json) {
    if (json
        case {
          'id': String id,
          'nom': String nom,
          'reputation': int reputation,
        }) {
      return Utilisateur(id: id, nom: nom, reputation: reputation);
    }
    throw FormatException('Utilisateur : JSON invalide : $json');
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'reputation': reputation,
      };

  @override
  String toString() => 'Utilisateur($id, $nom, réputation $reputation/5)';
}