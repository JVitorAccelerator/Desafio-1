import 'dart:io';

void main() {
  while (true) {
    stdout.write('Digite um inteiro ou digite 0 para sair: ');
    String input = stdin.readLineSync()!;
    int numero = int.parse(input);

    if (numero == 0) {
      break;
    }

    int soma = 
    somaDivisiveis(numero);
    print(soma);
  }
}

int somaDivisiveis(int numero) {
  int soma = 0;

  for (int i = 1; i <= numero-1; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }

  return soma;
}
