import 'dart:async';
import 'dart:io';

// EXEMPLO: tasks síncronas, mas com fila de prioridade.
// tasks: Event (baixa prioridade) e Microtask (alta prioridade)

void main ()
{
  // OBS: Dart é uma linguagem single-thread.
  print('Início main()');

  Timer.run( () {
    print('Evento 1'); //3
    Timer.run( () => print('Evento 2') ); //7
    scheduleMicrotask(() => print('Microtask 1')); //4
  });

  Timer.run( () => print('Evento 3') ); //5

  scheduleMicrotask( () => print('Microtask 2') ); //1

  Timer.run(() => print('Evento 4')); //6

  scheduleMicrotask( () => print('Microtask 3') ); //2

  print('Fim main()');
}