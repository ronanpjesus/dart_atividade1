import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() async {

  //print(Directory.current.path);
  
  // Caminho do arquivo contendo o JSON
  final filePath = 'dados.json';

  try {
    // Lê o arquivo
    final file = File(filePath);
    String content = await file.readAsString();

    // Converte o conteúdo JSON para um Map
    Map<String, dynamic> jsonData = jsonDecode(content);

    // Extrai os valores do JSON
    double valor1 = jsonData['valor1'].toDouble();
    double valor2 = jsonData['valor2'].toDouble();

    // Realiza operações matemáticas
    double soma = valor1 + valor2;
    double subtracao = valor1 - valor2;
    double multiplicacao = valor1 * valor2;
    double divisao = valor2 != 0 ? valor1 / valor2 : double.infinity;
    double potencia = pow(valor1, valor2).toDouble();

    // Exibe os resultados
    print('>>>>>>>> Resultados <<<<<<<<<');
    print('Soma: $soma');
    print('Subtração: $subtracao');
    print('Multiplicação: $multiplicacao');
    print('Divisão: ${divisao.toStringAsFixed(3)}');
    print('Potência: $potencia');
    print('>>>>>>>> Resultados <<<<<<<<<');
  } catch (e) {
    print('Erro ao ler o arquivo ou processar o JSON: $e');
  }
}