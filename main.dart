import 'dart:io';

void main() {
  print("Calculatrice Simple en Dart");

  // Get the first number
  stdout.write("Entrer le premier nombre: ");
  double? num1 = double.parse(stdin.readLineSync()!);

  // Get the operator
  stdout.write("Entrez un operateur  (+, -, *, /): ");
  String? operator = stdin.readLineSync();

  // Get the second number
  stdout.write("Entrer le deuxieme nombre: ");
  double? num2 = double.parse(stdin.readLineSync()!);

  double? result;

  // Perform the calculation
  if (operator == '+') {
    result = num1 + num2;
  } else if (operator == '-') {
    result = num1 - num2;
  } else if (operator == '*') {
    result = num1 * num2;
  } else if (operator == '/') {
    if (num2 != 0) {
      result = num1 / num2;
    } else {
      print("Erreur! Division par zero.");
      return;
    }
  } else {
    print("Erreur! Operateur invalide.");
    return;
  }

  // Display the result
  print("Le Resultat est: $result");
}
