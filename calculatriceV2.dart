class Calculatrice {
  double additionner(double num1, double num2) {
    return num1 + num2;
  }

  double soustraire(double num1, double num2) {
    return num1 - num2;
  }

  double multiplier(double num1, double num2) {
    return num1 * num2;
  }

  double diviser(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print("Erreur! Division par zero.");
      return 0;
    }
  }

  double calculer(double num1, double num2, String operator) {
    switch (operator) {
      case '+':
        return additionner(num1, num2);
      case '-':
        return soustraire(num1, num2);
      case '*':
        return multiplier(num1, num2);
      case '/':
        return diviser(num1, num2);
      default:
        print("Erreur! Operateur invalide.");
        return 0;
    }
  }
}

class CalculatriceModulo extends Calculatrice {
  double modulo(double num1, double num2) {
    return num1 % num2;
  }

  /*double racineCarree(double num) {
    return Math.sqrt(num);
  }*/
}

void main() {
  print("Calculatrice Modulo en Dart");

  var calc = CalculatriceModulo();
  double nombre1 = 20;
  double nombre2 = 3;

  double resultat = calc.additionner(nombre1, nombre2);
  print("Le resultat de l'addition est: $resultat");

  resultat = calc.modulo(nombre1, nombre2);
  print("Le resultat du modulo est: $resultat");
}