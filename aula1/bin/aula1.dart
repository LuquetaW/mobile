import 'package:aula1/aula1.dart' as aula1;

void exemplosTipos() {
  int quantidadeProdutos = 10;
  double precoProduto = 19.99;
  String nomeProduto = "Teclado";
  bool emEstoque = true;

  var categoriaProduto = "Informática"; // genérica

  print("int: $quantidadeProdutos"); // $ facilita pra não precisar concatenar
  print("double: $precoProduto");
  print("String: $nomeProduto");
  print("bool: $emEstoque");
  print("var: $categoriaProduto");
}

void exemplosDecisaoRepeticao() {
  double valorPedido = 0;
  // if (valorPedido > 99) {
  //   print("Pedido qualificado para frete grátis!");
  // } else if (valorPedido > 50) {
  //   print("Valor do pedido: R\$ $valorPedido. Frete pago.");
  // }

  switch (valorPedido) {
    case 0:
      print("Pedido vazio");
      break;
    case >100:
      print("Pedido com frete pago");
      break;
    default:
      print("Pedido com frete pago");
  }
}

void arrays(){
  List<String> produtos = ["Teclado", "Mouse", "Monitor"];
  print(produtos[0]); // Acessa o primeiro elemento
  print(produtos.length); // Tamanho da lista
}

void estruturaRepeticao() {
  // for (int i = 0; i < 5; i++) {
  //   print("Contagem: $i");
  // }

  // int contador = 0;
  // while (contador >= 0 && contador <10) {
  //   print("Contagem: $contador top");
  //   contador++;
  // }

  // ja faz a conversão não precisando passar o índice da lista
  // passa a lista e da um nome para cada item
  List<String> produtos= ["PS5", "Teclado", "Mouse", "Monitor"];
  for (var item in produtos) { 
    if (item == "PS5") {
      print("Produto: $item - Melhor Console do Mundão todo! até sair o 6 que tambbém não tenho");
    } else {
    print("Produto: $item");
    }
  }
}

bool printaCerveja(String bera){
  if(bera.toLowerCase() == "skol"){
    return true;
  }
  return false;
}

// pessoa classeExemplo (){
//   pessoa: {
//     nome: "João",
//     idade: 30,
//     profissao: "Desenvolvedor"
//   };
//   return pessoa;
// }

void exemploMap(){ // chave valor passa os tipos pra nome e os valores (string e double no ex)
  Map<String, double> precos = {
    "PS5": 4999.99,
    "Xbox Series X": 5299.99,
    "Não intendo Switch ": 4399.99
  };

  precos["PS5"] = 4199.99; // Atualiza o preço do PS5
  precos["Não intendo Switch "] = 20.99; // Atualiza o preço do Switch
  print("Preço atualizado: ${precos["PS5"]}"); // Acessa o preço do PS5
  print ("Mega Promotion ÑIntendo: ${precos["Não intendo Switch "]}");
}

void exemploClasse(){
  Produto produto1 = Produto("Alcool", 4.30);
  produto1.exibirProduto(); // chama por método da classe pra printar!
  // print("Produto: ${produto1.nome}, Preço: R\$ ${produto1.preco}");

  videoGame ps5 = videoGame("PS5", 5000.11, "Sony");
  ps5.exibirVideoGame(); // chama o método da classe filha que tem o super pra chamar o método da classe pai
}

// arrow com MAP
void funcaoAnonima(){
  print("Função Anônima");
  List<int> numeros = [1, 2, 3, 4, 5];
  var numerosDobrados = numeros.map((n) => n * 2).toList(); // função anônima que dobra os números
}

class Produto {
  String nome;
  double preco;

  Produto(
    this.nome, 
    this.preco
  );

  void exibirProduto(){
    print("Produto: $this.nome, Preço: R\$ $this.preco");
  }
}

class videoGame extends Produto {
  String marca;

  videoGame(String nome, double preco, this.marca) 
  : super(nome, preco);

  @override
  void exibirVideoGame(){
    super.exibirProduto(); // chama o método da classe pai super
    print("Video Game: $this.nome, Preço: R\$ $this.preco, Marca: $this.marca");
  }
}


abstract class Documento {
  void validarDocumento();
}

// void Cpf(
//   @override
//   void validarDocumento() {
//     print("CPF válido!");
//   }
// )


// void exemploAbstracao(){
//   print("Abstração em Dart\n");
//   Cpf cpf = Cpf();
//   cpf.validarDocumento();
// }

mixin LogOperacao {
  void log(String mensagem) {
    print("Log: $mensagem");
  }
}

class ServicoPedido with LogOperacao {
  void processarPedido(String pedido) {
    log("Processando pedido: $pedido");
    // Lógica de processamento do pedido
    log("Pedido processado com sucesso!");
  }
}