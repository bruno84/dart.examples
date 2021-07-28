main() 
{ 
  int num = 10; 
  int den = 0; 
  int res;  
   
  try { 
    res = num ~/ den; 
  }  
  catch(e) { 
    print(e); 
  } 
  finally {
    print("Sempre será executado!"); 
  }

  print("");

  try { 
    res = num ~/ den; 
  }  
  on IntegerDivisionByZeroException { 
    print("ERRO: divisao por zero!"); 
  }
  finally {
    print("Sempre será executado!"); 
  }
   
  try {
  // Null Safety foi introduzido no Dart 2.12.
  // Se habilitado, as variáveis não podem conter null, a não ser que você permita explicitamente.
    int? myInt1 = null;
    int  myInt2 = null!;
    // ignore: dead_code
    print("myInt1: $myInt1");
    print("myInt2: $myInt2");
  }
  catch(e) { 
    print(e); 
  } 

} 