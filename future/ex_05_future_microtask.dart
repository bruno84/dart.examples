// EXEMPLO:
// microtask assíncrono
// atalho: print

void main()
{
  // Cenário 1: quando pode haver mais de uma instrução
  Future( () => "Future normal").then( (String str) {
    print(str);
  });

  // Cenário 2: quando há apenas uma instrução
  Future.microtask( () => "Future microtask").then( (String str) => print(str) );

  // Cenário 3: quando há apenas uma instrução que é exibir o objeto retornado
  //Future( () => "Future normal").then( print );
  //Future.microtask( () => "Future microtask").then( print );
}
