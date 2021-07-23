
// Função comum:
double calcularSoma(double a, double b){
  double result = a + b;
  return result;
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