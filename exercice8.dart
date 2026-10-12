// creation de la classe Livre

class Livre {
  String titre;
  String auteur;
  int _pages;

  // Parametres statiques

  static int totalLivres = 0;

  // Constructeur

  Livre(this.titre, this.auteur, [int pages = 0]) : _pages = pages {
    totalLivres++;
  }

  // Lire les pages du livre

  int get pages {
    return _pages;
  }

  // afficher les informations

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
  }

  // Affichage du nombre total de livres methodes statiques

  static void afficherTotal() {
    print("Nombre total de livres: $totalLivres");
  }
}

// Creation de classe Roman

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  // Affichage des informations du roman

  void afficherGenre() {
    afficherInfos();
    print("Genre: $genre");
  }
}

void main() {
  // Creation des livres

  var livre1 = Livre("Les Misérables", "Victor Hugo", 200);
  var livre2 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");

  livre1.afficherInfos();
  print("Pages: ${livre1.pages}");
  livre2.afficherInfos();

  // Creation des romans

  var roman1 = Roman(
    "Le chien des Baskerville",
    "Arthur Conan Doyle",
    "Policier",
  );
  var roman2 = Roman("Orgueil et Préjugés", "Jane Austen", "Romance");

  roman1.afficherGenre();
  roman2.afficherGenre();

  // Affichage du nombre total de livres

  Livre.afficherTotal();
}
