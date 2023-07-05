import 'dart:io';

// Exemplo: estruturas condicionais

void main()
{
  //-----------------------------------------------------------------
  // if
  //-----------------------------------------------------------------
  double media = 6.9;

  if (media >= 7) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }

  //-----------------------------------------------------------------
  // operador ternário condicional
  //-----------------------------------------------------------------
  print( media >= 7 ? "Aprovado" : "Reprovado" );

  String resultado = (media >= 7 ? "Aprovado" : "Reprovado");
  print(resultado);

  //-----------------------------------------------------------------
  // operador ??=
  //-----------------------------------------------------------------
  // ATENÇÃO: novidade
  //String? str = stdin.readLineSync();
  String? str;
  print("str = $str");      // null
  str ??= "Não Informado";  // Atribuição só acontece se objeto for null
  print("str = $str");      // "Não Informado"

  //-----------------------------------------------------------------
  // switch
  //-----------------------------------------------------------------
  str = "dois";

  switch(str) 
  {
    case "um":
      print("frase1");
      break;
    case "dois":
      print("frase2");
      break;
    case "três":
      print("frase3");
      break;
    default:
      print("Numa das opções!");
  }
}