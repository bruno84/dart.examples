// Classe abstrata
abstract class Pessoa {}

// Classe entidade concreta
class Cliente extends Pessoa
{
  late String _cpf;
  late String _nome;
  late int _ano;
  Cliente(this._cpf, this._nome, this._ano);
}

// Classe entidade concreta
class Fornecedor extends Pessoa
{
  late String _codigo;
  late String _nome;
  late double _servico;
  Fornecedor(this._codigo, this._nome, this._servico);
}

// Classe genérica sem restrição
class FilaSemRestricao<T>
{
  List<T> _lista = [];

  void adicionar(T obj) {
    _lista.add(obj);
  }
}

// Classe genérica com restrição
class FilaComRestricao<T extends Pessoa>
{
  List<T> _lista = [];

  void adicionar(T obj) {
    _lista.add(obj);
  }
}


void main()
{
  FilaSemRestricao filaString = FilaSemRestricao<String>();
  filaString.adicionar( "str1" );
  filaString.adicionar( "str2" );

  FilaSemRestricao filaCliente = FilaSemRestricao<Cliente>();
  filaCliente.adicionar( Cliente("123.456.789-00", "Fulano1", 1984) );

  FilaSemRestricao filFornecedor = FilaSemRestricao<Fornecedor>();
  filFornecedor.adicionar( Fornecedor("789", "Servico1", 10) );
  filFornecedor.adicionar( Cliente("222.456.789-00", "Fulano2", 1990) ); // Unhandled exception


  //FilaComRestricao filaString2 = FilaComRestricao<String>(); // Desrespeita restrição
  //filaString2.adicionar( "str1" );
  //filaString2.adicionar( "str2" );

  FilaComRestricao filaCliente2 = FilaComRestricao<Cliente>(); // Respeita restrição
  filaCliente2.adicionar( Cliente("333.456.789-00", "Fulano3", 1994) );
}
