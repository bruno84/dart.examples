// Exemplo:

main()
{
  int myInt = -5;
  double myFloat = 10.7777;

  print("abs");
  print( myInt.abs() );
  print( myInt );           // A variável não é alterada

  print("truncate");
  print( myFloat.truncate() );          // 10
  print( myFloat.truncateToDouble() );  // 10.0

  print("round");
  print( myFloat.round() );           // 11
  print( myFloat.roundToDouble() );   // 11.0

  print("ceil");
  print( myFloat.ceil() );          // 11
  print( myFloat.ceilToDouble() );  // 11.0

  print("floor");
  print( myFloat.floor() );         // 10
  print( myFloat.floorToDouble() ); // 10.0

  print("compareTo");
  print(myInt.compareTo(10));   //-1
  print(myInt.compareTo(-5));   // 0
  print(myInt.compareTo(-10));  // 1

  print("toString");
  print(myFloat.toStringAsExponential(3));  // 1.078e+1
  print(myFloat.toStringAsFixed(2));        // 10.78
  print(myFloat.toStringAsPrecision(5));    // 10.778

  print("parse");
  var myNum = num.parse("10");
  print(myNum is int); // true
  print(myNum);
  myNum = num.parse("10.91");
  print(myNum is double); // true
  print(myNum);
}
