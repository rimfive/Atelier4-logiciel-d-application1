// creation de la classe  Livre

class Livre {
  String titre;
  String auteur;
  int annee;

  // Parametres statiques

  static int nombreTotal = 0;

  // Constructeur

  Livre(this.titre, this.auteur, this.annee) {
    nombreTotal++;
  }

  // Lire les pages du livre

  int get pages {
    return _pages;
  }

  // afficher les informations

  void afficherInformations() {
    print("Titre: $titre, Auteur: $auteur, Année: $annee");
  }

  // Affichage du nombre total de livres methodes statiques

  static void afficherNombreTotal() {
    print("Nombre total de livres: $nombreTotal");
  }
}

// Creation de classe Roman

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  // Affichage des informations du roman
}

void main() {
  // Creation des livres

  var livre1 = Livre("Les Misérables", "Victor Hugo", 1862);
  var livre2 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry", 1943);

  livre1.afficherInformations();
  print("Pages: ${livre1.pages}");
  livre2.afficherInformations();

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

  Livre.afficherNombreTotal();
}
