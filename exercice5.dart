import 'dart:math';

// Creation de la classe abstraite Forme

class Cercle extends Forme {
  final double rayon;

  Cercle(this.rayon);

  @override
  double calculerAire() {
    return pi * rayon * rayon;
  }
}

// Creation de la classe Rectangle

class Rectangle extends Forme {
  final double largeur;
  final double hauteur;

  Rectangle(this.largeur, this.hauteur);

  @override
  double calculerAire() {
    return hauteur * largeur;
  }
}

void main() {
  // Creation des formes

  var cercle = Cercle(3);
  var rectangle = Rectangle(4, 5);

  // Affichage des aires
  cercle.afficherMessage();
  print("Aire du cercle: ${cercle.calculerAire().toStringAsFixed(2)}");

  rectangle.afficherMessage();
  print("Aire du rectangle: ${rectangle.calculerAire()}");
}
