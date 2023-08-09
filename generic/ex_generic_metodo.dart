T ultimoSemRestricao<T>(List<T> lista) {
  T ultimo = lista.last;
  return ultimo;
}

T ultimoComRestricao<T extends num>(List<T> lista) {
  T ultimo = lista.last;
  return ultimo;
}

void main()
{
  print( ultimoSemRestricao<String>(["str1", "str2", "str3"])); // str3

  print(ultimoComRestricao<int>([10, 20, 30])); // 30
  print(ultimoComRestricao([1.4, 2, 42.0])); // 42.0
  //print(ultimoComRestricao([1.4, "2", 42.0])); // erro!
}