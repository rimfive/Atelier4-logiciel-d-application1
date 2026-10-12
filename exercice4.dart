class Media {
 final String titre; 

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média.");
  }
}


class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

@override
  void afficherType() {
    print("Ceci est un livre: $titre de $auteur.");
  }
}


class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un film: $titre de $dureeMinutes minutes.");
    }
  }


void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre("Les misérables", "Victor Hugo"));
  catalogue.add(Livre("Le Petit Prince", "Antoine de Saint-Exupéry"))
  catalogue.add(Film("Titanic", 194));
  catalogue.add(Film("Inception", 148));

  for (var media in catalogue) {
    media.afficherType();
  } 
}