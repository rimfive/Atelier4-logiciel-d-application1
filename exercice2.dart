// creation de la classe Point

class Point {
  double _x, _y;
  Point(this._x, this._y);

  // Construction qui prend les coordonnees en parametre

  Point(this._x, this._y);

  // Methode pour deplacer le point

  void deplacer(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  // Methode pour afficher les coordonnees du point

  void afficher() {
    print("Point: ($_x, $_y)");
  }

  void main() {
    var pt = Point(2.0, 3.0);
    pt.afficher();
    pt.deplacer(1.0, -1.0);
    pt.afficher();
  }
}
