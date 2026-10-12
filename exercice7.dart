// Creation de la classe Tache

class Tache {
  String description;

// Variable statique pour compter le nombre total de taches

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;

    }
  }

  void main() {

    var tache1 = Tache("Faire les courses");
    var tache2 = Tache("Reviser le court Dart");
    var tache3 = Tache("Faire le Tp de POO");
  
// Affichage du nombre total de taches
    