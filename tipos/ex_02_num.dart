// Exemplo:

main()
{
  int myInt = -5;
  double myDouble = 10.7777;

  print("abs");
  print( myInt.abs() );
  print( myInt );           // A variável não é alterada

  print("truncate");
  print( myDouble.truncate() );          // 10
  print( myDouble.truncateToDouble() );  // 10.0

  print("round");
  print( myDouble.round() );           // 11
  print( myDouble.roundToDouble() );   // 11.0

  print("ceil");
  print( myDouble.ceil() );          // 11
  print( myDouble.ceilToDouble() );  // 11.0

  print("floor");
  print( myDouble.floor() );         // 10
  print( myDouble.floorToDouble() ); // 10.0

  print("compareTo");
  print(myInt.compareTo(10));   //-1
  print(myInt.compareTo(-5));   // 0
  print(myInt.compareTo(-10));  // 1

  print("toString");
  print(myDouble.toStringAsExponential(3));  // 1.078e+1
  print(myDouble.toStringAsFixed(2));        // 10.78
  print(myDouble.toStringAsPrecision(5));    // 10.778

  print("parse");
  var myNum = num.parse("10");
  print(myNum is int); // true
  print(myNum);
  myNum = num.parse("10.91");
  print(myNum is double); // true
  print(myNum);
}
