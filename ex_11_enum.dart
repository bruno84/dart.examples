enum myEnum 
{ 
   const0,
   const1, 
   const2, 
   const3 
}  

void main() 
{ 
  print(myEnum.values); 
  print("");

  for (var item in myEnum.values) {
    print('valor: $item, indice: ${item.index}');
  }

  print("");

  print('const0 --> valor: ${myEnum.const0}, indice: ${myEnum.const0.index}'); 

  print('const0 --> index: ${myEnum.values[0]}'); 
}
