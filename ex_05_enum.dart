// Exemplo: enum

enum myEnum
{ 
   fase0,
   fase1,
   fase2,
   fase3
}  

void main() 
{ 
  print(myEnum.values); 
  print("");

  var list = myEnum.values;
  print(list);
  print("");

  for (var item in myEnum.values) {
    print('valor: $item, indice: ${item.index}');
  }

  print("");

  print('const0 --> valor: ${myEnum.fase0}, indice: ${myEnum.fase0.index}');

  print('const0 --> index: ${myEnum.values[0]}');

  print("");

  myEnum faseAtual = myEnum.fase0;
  print("faseAtual: $faseAtual");
}
