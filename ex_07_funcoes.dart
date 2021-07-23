import 'dart:core';

main()
{
  int myInt = -5;
  double myFloat = 10.7777;

  print(myInt.abs()); 
  print(myInt);           // A variável não é alterada
  print("");

  print(myFloat.truncate());  // 10
  print("");

  print(myFloat.truncateToDouble()); // 10.0
  print("");

  print(myFloat.round()); // 11
  print("");

  print(myFloat.roundToDouble());  // 11.0
  print("");

  print(myFloat.ceil()); // 11
  print("");
  
  print(myFloat.ceilToDouble()); // 11.0
  print("");

  print(myFloat.floor()); // 10
  print("");

  print(myFloat.floorToDouble()); // 10.0
  print("");

  print(myInt.clamp(-2, 2)); // -2
  print("");

  print(myInt.compareTo(-5)); // 0=igual, 1=diferente
  print("");

  print(myFloat.toStringAsExponential(3)); // 1.078e+1
  print("");

  print(myFloat.toStringAsFixed(2)); // 10.78
  print("");

  print(myFloat.toStringAsPrecision(5)); // 10.778
  print("");

  var myNum = num.parse("10");  // vai ser tratado como double
  print(myNum);
  myNum = num.parse("10.91");
  print(myNum);

  print(myNum is double); // true

  print("");
}
