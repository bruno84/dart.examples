
// EXEMPLO:
// microtask assíncronas
// atalho: print

// OBS: Future.microtask tem prioridade mais alta do que um evento Future normal.

void main()
{
  // Cenário 1: quando o bloco tem mais de uma instrução
  Future( () => "Future normal1").then( (String str) {
    print(str);
    // outras intrucoes
  });

  // Cenário 2: quando há apenas uma instrução
  Future.microtask( () => "Future microtask1").then( (String str) => print(str) );

  // Cenário 3: quando há apenas uma instrução que é exibir o objeto retornado
  Future( () => "Future normal2").then( print );

  Future.microtask( () => "Future microtask2").then( print );
}
