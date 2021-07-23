void main()
{ 
  double media = 6.9;

  if (media >= 7) {
    print("Aprovado");
  } else {
    print("Reprovado");
  }

  print(media >= 7 ? "Aprovado" : "Reprovado"); 

  // ATENÇÃO: novidade
  String? str;
  str ??= "Não Informado";  
  print(str);   // "Não Informado"


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