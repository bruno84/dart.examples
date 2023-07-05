
main()
{
  int int1, int2, result;

  int1 = 11;
  int2 = 4;

  result = int1 + int2;
  print("Soma: $result");

  result = int1 - int2;
  print("Subtracao: $result");

  result = int1 * int2;
  print("Multiplicacao: $result");

  // Atenção!
  result = int1 ~/ int2;
  print("Divisao (inteiro): $result");
  double result2 = int1 / int2;
  print("Divisao (double): $result2");

  result = int1 % int2;     // % apenas com operandos inteiros
  print("Resto: $result");
}
