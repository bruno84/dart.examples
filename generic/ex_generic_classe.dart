
//------------------------------------------------------------------------------
// CLASSES DA HIERARQUIA
//------------------------------------------------------------------------------
// Classe abstrata
abstract class Pessoa {
  void exibir();
}

// Classe entidade concreta
class Cliente extends Pessoa
{
  late String _cpf;
  late String _nome;
  late int _ano;
  Cliente(this._cpf, this._nome, this._ano);

  @override
  void exibir() {
    print("Cliente: $_cpf, $_nome, $_ano");
  }
}

// Classe entidade concreta
class Fornecedor extends Pessoa
{
  late String _codigo;
  late String _nome;
  late double _servico;
  Fornecedor(this._codigo, this._nome, this._servico);

  @override
  void exibir() {
    print("Fornecedor: $_codigo, $_nome, $_servico");
  }
}


//------------------------------------------------------------------------------
// CLASSE GENÉRICA (SEM restrição)
//------------------------------------------------------------------------------

class FilaSemRestricao<T>
{
  List<T> _lista = [];

  void adicionar(T obj) {
    _lista.add(obj);
  }
}

//------------------------------------------------------------------------------
// CLASSE GENÉRICA (COM restrição)
//------------------------------------------------------------------------------

class FilaComRestricao<T extends Pessoa>
{
  List<T> _lista = [];

  void adicionar(T obj) {
    _lista.add(obj);
  }
}

//------------------------------------------------------------------------------
// MAIN
//------------------------------------------------------------------------------
void main()
{
  FilaSemRestricao filaString = FilaSemRestricao<String>();
  filaString.adicionar( "str1" );
  filaString.adicionar( "str2" );

  FilaSemRestricao filaCliente = FilaSemRestricao<Cliente>();
  filaCliente.adicionar( Cliente("123.456.789-00", "Fulano1", 1984) );
  filaCliente.adicionar( Cliente("123.456.789-01", "Fulano2", 1985) );

  FilaSemRestricao filFornecedor = FilaSemRestricao<Fornecedor>();
  filFornecedor.adicionar( Fornecedor("788", "Servico1", 10) );
  filFornecedor.adicionar( Fornecedor("790", "Servico2", 11) );

  //FilaComRestricao filaString2 = FilaComRestricao<String>(); // Desrespeita restrição
  //filaString2.adicionar( "str1" );
  //filaString2.adicionar( "str2" );

  FilaComRestricao filaCliente2 = FilaComRestricao<Cliente>(); // Respeita restrição
  filaCliente2.adicionar( Cliente("333.456.789-00", "Fulano1", 1994) );
  filaCliente2.adicionar( Cliente("333.456.789-01", "Fulano2", 1995) );
}
