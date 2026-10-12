// creation classe qui joue le role d'interface


}

class ServerApi implements connexion {
  @override
  void seConnecter(String utilisateur) {
    print("ServerApi: Connexion etablie pour l'utilisateur $utilisateur.");
  }

  @override
  void seDeconnecter() {
    print("ServerApi: Deconnexion reussie.");
  }
}

// Classe base de donnees

class BaseDeDonnees implements connexion {
  @override
  void seConnecter(String utilisateur) {
    print("BaseDeDonnees: Connexion etablie pour l'utilisateur $utilisateur.");
  }

  @override
  void seDeconnecter() {
    print("BaseDeDonnees: connexion fermee.");
  }
}

void main() {
  var api = ServerApi();
  var bdd = BaseDeDonnees();

  List<connexion> services = [api, bdd];

  for (var service in services) {
    service.seConnecter("Karim");
    service.seDeconnecter();
  }
}
