void main() {
  var aluno = Aluno("Felipão da Zimba", 19, 9);
  aluno.exibirInformacoes();

  var aluno2 = Aluno.ganhadorChallenge("Ricardão", 10);
  aluno2.exibirInformacoes();

  var total = somarAreas([Quadrado(10), Retangulo(10, 20)]);
  print(total);
}

//----------------------------------------------------------------------//

double somarAreas(List<Forma> formas){
  double soma = 0;
  for (var forma in formas){
    soma += forma.calcularArea();
  }
  return soma;
}

//-----------------------------------------------------------------------//

abstract class Forma {
  double calcularArea();
}

//-----------------------------------------------------------------------//

class Quadrado extends Forma {
  double lado;
  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}

//-----------------------------------------------------------------------//

class Retangulo extends Forma {
  double largura;
  double altura;
  Retangulo(this.altura, this.largura);

  @override
  double calcularArea() {
    return largura * altura;
  }
}

//-----------------------------------------------------------------------//

class Aluno {
  String? nome;
  int? idade;
  double? nota;

  Aluno(String nome, int idade, double nota) {
    this.nome = nome;
    this.idade = idade;
    this.nota = nota;
  }
  Aluno.ganhadorChallenge(this.nome, this.nota) {
    nota = 10;
  }

  void exibirInformacoes() {
    print("Nome do aluno: $nome");
    print("Idade do aluno: $idade");
    print("Nota do aluno: $nota");
  }
}
