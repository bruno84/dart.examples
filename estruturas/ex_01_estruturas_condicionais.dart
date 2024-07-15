
// Exemplo: estruturas condicionais

void main()
{
  //-----------------------------------------------------------------
  // ESTRUTURA IF
  //-----------------------------------------------------------------
  print("ESTRUTURA IF");
  double media = 6.9;

  if (media >= 7) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }

  //-----------------------------------------------------------------
  // OPERADOR TERNÁRIO CONDICIONAL
  //-----------------------------------------------------------------
  print("\nOPERADOR TERNÁRIO CONDICIONAL");

  print( media >= 7 ? "Aprovado" : "Reprovado" );

  String resultado = (media >= 7 ? "Aprovado" : "Reprovado");
  print(resultado);

  //-----------------------------------------------------------------
  // ESTRUTURA SWITCH
  //-----------------------------------------------------------------
  print("\nESTRUTURA SWITCH");

  String str = "dois";

  switch(str)   // OBS: pode-se avaliar String
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
      print("Nenhuma das opções!");
  }


  int numero = 13;

  switch(numero)
  {
    outro:    // CUIDADO! Deixa o fluxo confuso!
    case 4:
      print("dizem que 4 dá azar na China");
      break;
    case 7:
      print("dizem que dá sorte");
      break;
    case 13:
      print("dizem que 13 dá azar em vários países");
      continue outro;
      break; // "dead code"
    default:
      print("Nenhuma das opções!");
  }

}