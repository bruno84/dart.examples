
// Função comum:
double calcularSoma(double a, double b)
{
  double result = a + b;
  return result;
}

// Função com dynamic:
dynamic calcularSomaDynamic(dynamic a, dynamic b)
{
  print("a eh tipo: ${a.runtimeType}");
  print("b eh tipo: ${b.runtimeType}");
  dynamic c = a + b;
  print("c eh tipo: ${c.runtimeType}");
  return c;
}

// Função com apenas um comando, sem retorno:
void funcaoInLine() => print("Apenas uma instrução!");

// Função com apenas um comando, com retorno:
double calcularAreaCirc(double raio) => 3.14 * raio*raio;

// Função com parâmetros opcionais:
void parametrosOpcionais(String param1, {int? param2, double? param3}) {
  print("$param1 $param2 $param3");
}

// Funções como parâmetro
double calcular(double a, double b, Function funcao) {
  return funcao(a, b);
}


void main() 
{
  funcaoInLine();
  
  dynamic d = calcularSomaDynamic(2, 4.5);
  print(d);

  var r = calcularSoma(2, 5);
  print(r);

  r = calcularAreaCirc(10);
  print(r);

  parametrosOpcionais("Bruno");
  parametrosOpcionais("Bruno", param2: 10);
  parametrosOpcionais("Bruno", param3: 7.5);
  parametrosOpcionais("Bruno", param2: 10, param3: 7.5);
  
  r = calcular(2, 5, calcularSoma);
  print(r);

  // Função anônima(a,b)
  r = calcular(2, 5, (a, b) {
    var result = a * b;
    return result;
  });
  print(r);
  
}