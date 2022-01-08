import 'package:calculadora/calculadora.dart' as calculadora;

enum Operacion {
  SUMA,
  RESTA,
  MULTIPLICACION,
  MODULO,
  FACTORIAL,
  SUMATORIA,
  PRODUCTO
}

void main(List<String> arguments) {
  int valor1 = 10;
  int valor2 = 10;
  List<int> valores = [1, 2, 3, 4];
  dynamic resultado = 0;
  Operacion opcion = Operacion.PRODUCTO;

  switch (opcion) {
    case Operacion.SUMA:
      resultado = valor1 + valor2;
      break;
    case Operacion.RESTA:
      resultado = valor1 - valor2;
      if (resultado < 0) {
        resultado = 'NEGATIVO';
      }
      break;
    case Operacion.MULTIPLICACION:
      resultado = valor1 * valor2;
      break;
    case Operacion.MODULO:
      resultado = valor1 % valor2;
      break;
    case Operacion.FACTORIAL:
      resultado = factorial(valor1);
      break;
    case Operacion.SUMATORIA:
      resultado = sumatoria(valores);
      break;
    case Operacion.PRODUCTO:
      resultado = producto(valores);
      break;
  }

  print('El resultado de la operacion es $resultado.');
}

int factorial(int numero) {
  var factorial = 1;
  for (int i = 1; i <= numero; i++) {
    factorial *= i;
  }
  return factorial;
}

int sumatoria(List<int> valores) {
  int total = 0;
  for (int i = 0; i < valores.length; i++) {
    total += valores[i];
  }
  return total;
}

int producto(List<int> valores) {
  int total = 1;
  for (int i = 0; i < valores.length; i++) {
    total *= valores[i];
  }
  return total;
}
