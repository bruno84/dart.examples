import 'dart:io';

// EXEMPLO: processamento síncrono

void main ()
{
  print('Início main()');

  int index = 0;
  while(index < 3)
  {
    print('index: $index');
    index++;

    sleep(const Duration(seconds: 1));
  }

  print('Fim main()');
}