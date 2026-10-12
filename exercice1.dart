// EXERCIE 1 USINE DE COULEUR

class couleur {
  final int r;
  final int g;
  final int b;

  // CONSTRUCTEUR

  couleur(this.r, this.g, this.b);

  // CONSTRUCTION PREDEFINIEE
  couleur.rouge() : r = 255, g = 0, b = 0;
  couleur.bleu() : r = 0, g = 0, b = 255;
  couleur.vert() : r = 0, g = 255, b = 0;

  void afficher() {
    print("( R :$r, V : $g, B : $b)");
  }
}

void main() {
  couleur rouge = couleur.rouge();
  couleur bleu = couleur.bleu();
  couleur vert = couleur.vert();

  rouge.afficher();
  bleu.afficher();
  vert.afficher();
}
