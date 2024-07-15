// Exemplo: criar funções

// Função normal:
double calcularSomaNormal(double a, double b)
{
  print("calcularSomaNormal");
  double result = a + b;
  return result;
}


// Função InLine sem retorno:
void funcaoInLine() => print("funcaoInLine: apenas uma instrução!");

// Função InLine com retorno:
double calcularAreaCirc(double raio) => 3.14 * raio*raio;


// Função com dynamic:
dynamic calcularSomaDynamic(dynamic a, dynamic b)
{
  print("calcularSomaDynamic");

  print("a eh tipo: ${a.runtimeType}");
  print("b eh tipo: ${b.runtimeType}");
  dynamic c = a + b;
  print("c eh tipo: ${c.runtimeType}");
  return c;
}


// Função com parâmetros opcionais, nomeados:
void parametrosOpcionaisNomeados(String param1, {int? param2, double? param3})
{
  print("parametrosOpcionaisNomeados");
  print("param1=$param1 param2=$param2 param3=$param3");
}

// Função com parâmetros opcionais, ordenados:
void parametrosOpcionaisOrdenados(String param1, [int? param2, double? param3])
{
  print("parametrosOpcionaisOrdenados");
  print("param1=$param1 param2=$param2 param3=$param3");
}


// Função que recebe outra função como parâmetro:
double calcular(double a, double b, Function funcao)
{
  print("calcular");
  return funcao(a, b);
}


void main() 
{
  var r = calcularSomaNormal(2, 5);
  print(r); // 7.0

  print("");

  funcaoInLine();

  print("");

  r = calcularAreaCirc(10);
  print("calcularAreaCirc: $r");

  print("");

  dynamic d = calcularSomaDynamic(2, 4.5);
  print(d);
  dynamic s = calcularSomaDynamic("Bruno", "Monteiro");
  print(s);

  print("");

  parametrosOpcionaisNomeados("Bruno1");
  parametrosOpcionaisNomeados("Bruno1", param2: 10);
  parametrosOpcionaisNomeados("Bruno1", param3: 7.5);
  parametrosOpcionaisNomeados("Bruno1", param2: 10, param3: 7.5);
  //parametrosOpcionaisNomeados("Bruno1", 10, 7.5);         // erro: params precisam ser nomeados
  print("");
  parametrosOpcionaisOrdenados("Bruno2");
  parametrosOpcionaisOrdenados("Bruno2", 10);
  //parametrosOpcionaisOrdenados("Bruno2", 7.5);          // erro: pois param2 é int
  //parametrosOpcionaisOrdenados("Bruno2", param3: 7.5);  // erro: params não podem ser nomeados
  parametrosOpcionaisOrdenados("Bruno2", 10, 7.5);
  print("");

  r = calcular(2, 5, calcularSomaNormal);
  print(r);

  print("");

  print("Função anônima(a,b)");
  r = calcular(2, 5, (a, b) {
    var result = a * b;
    return result;
  });
  print(r);
  
}