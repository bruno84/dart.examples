// Exemplo: enum

enum myEnum { fase0, fase1, fase2, fase3 }

void main() 
{
  print("\nImprimindo:");
  print(myEnum.values);

  print("\nAtribuição:");
  var list = myEnum.values;
  print(list);
  print("");

  print("\nIterando:");
  for (var item in myEnum.values) {
    print('valor: $item, indice: ${item.index}');
  }

  print("\nElementos:");
  print("const0 --> valor: ${myEnum.fase0.name}, indice: ${myEnum.fase0.index}");
  print("const0 --> valor: ${myEnum.values[0].name}, indice: ${myEnum.values[0].index}");

  print("\nAtribuição de Elementos:");
  myEnum faseAtual0 = myEnum.fase0;
  print("faseAtual0: $faseAtual0");
  myEnum faseAtual1 = myEnum.values[1];
  print("faseAtual1: $faseAtual1");
}
