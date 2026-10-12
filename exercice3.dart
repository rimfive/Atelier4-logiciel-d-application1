// Compte bancaire 

class CompteBancaire {
  double _solde;
  final String numeroCompte;

// Constructeur
  CompteBancaire( this.numeroCompte, [double solde = 0.0]) : _solde = solde; 
  
// Retourne le solde du compte en dollars
  
  String get solde{
    return "\$_solde.toStringAsFixed(2) \$";
  }

void deposer(double montant) {
    if (montant > 0) {
      _solde = _solde + montant;
    } else {
      print("Le montant à déposer doit être positif.");
    }
  }

void main () {
    var compte = CompteBancaire("CA-001");

    compte.deposer(150);
    print("Compte: ${compte.numeroCompte} - Solde: : "${compte.solde} );

}

}