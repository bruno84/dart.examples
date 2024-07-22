import 'dart:math';

// Exemplo: exemplos de métodos das classes int e double

// int range:
// Native platforms -2^63 to 2^63-1. Web: integer values are represented as JavaScript numbers: -2^53 to 2^53-1.

// double range: 10^-308 ... 10^308


main()
{
  int myInt = -5;
  double myDouble = 10.7777;

  print("\n abs");
  print( myInt.abs() );     //  5
  print( myInt );           // -5   OBS: A variável não é alterada

  print("\n truncate");
  print( myDouble.truncate() );          // 10      OBS: retorna int
  print( myDouble.truncateToDouble() );  // 10.0    OBS: retorna double

  print("\n round");
  print( myDouble.round() );           // 11        OBS: retorna int
  print( myDouble.roundToDouble() );   // 11.0      OBS: retorna double

  print("\n ceil");
  print( myDouble.ceil() );          // 11        OBS: retorna int
  print( myDouble.ceilToDouble() );  // 11.0      OBS: retorna double

  print("\n floor");
  print( myDouble.floor() );         // 10        OBS: retorna int
  print( myDouble.floorToDouble() ); // 10.0      OBS: retorna double

  print("\n compareTo");
  // leia: "meu obj comparado com o param"
  print(myInt.compareTo(7));   //-1    // está antes  (-5 ... +7)
  print(myInt.compareTo(-5));  // 0    // está igual  (-5  == -5)
  print(myInt.compareTo(-7));  // 1    // está depois (-7 ... -5)

  print("\n parse");
  num myNum = num.parse("10");
  print(myNum is int); // true
  print(myNum);
  myNum = num.parse("10.91");
  print(myNum is double); // true
  print(myNum);


  print("\n toString");
  myDouble = 1.2345678901234567890;
  print(myDouble);                            // 1.2345678901234567
  print("toStringAsExponential");
  print(myDouble.toStringAsExponential(3));   // 1.235e-1
  print("toStringAsFixed");
  print(myDouble.toStringAsFixed(3));         // 1.235
  print(myDouble.toStringAsFixed(16));        // 1.2345678901234567
  print("toStringAsPrecision");
  print(myDouble.toStringAsPrecision(3));     // 1.23
  print(myDouble.toStringAsPrecision(17));    // 1.2345678901234567

  print("\n bônus: arredondar conforme precisão");
  double d = 1.156;
  print( setPrecision1(d, 2) );
  print( setPrecision2(d, 2) );
}

// manualmente: por matemática
double setPrecision1(double d, int prec)
{
  dynamic pot10 = pow(10, prec);
  d = (d * pot10);
  d = d.roundToDouble();
  d = d / pot10;
  return d;
}

// manualmente: por string
double setPrecision2(double d, int prec) {
  String str = d.toStringAsFixed(prec);
  d = double.parse(str);
  return d;
}

