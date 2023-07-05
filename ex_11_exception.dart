// Exemplo: exception

String situacaoAluno(double media)
{
  if(media <= 10 && media >= 7) {
    return "Aprovado";
  }
  else if(media < 7 && media >= 3.5) {
    return "Recuperacao";
  }
  else if(media < 3.5 && media >= 0) {
    return "Reprovado";
  }
  else {
    throw Exception("Média fora do padrão!");
  }
}

main()
{
  try {
    print( situacaoAluno(11) );
  }
  catch(e) {
    print(e);
  }

  print("");

  int num = 10; 
  int den = 0;
   
  try { 
    print( num ~/ den );
  }  
  catch(e) { 
    print(e); 
  } 
  finally {
    print("Sempre será executado!"); 
  }

  print("");

  try {
    print( num ~/ den );
  }  
  on UnsupportedError {
    print("ERRO: divisao por zero!"); 
  }
  finally {
    print("Sempre será executado!"); 
  }

} 