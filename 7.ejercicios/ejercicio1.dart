import 'dart:math';

main(List<String> args) {
  //Generar una lista aleatoria de 6 elementos con numeros del 1 al 100
  List<int> lista = new List<int>.generate(6, (i) => Random().nextInt(100));
  print(lista);

  //Ordenar la lista
  lista.sort();
  print(lista);

  //imprimir el mayor y el menor
  print('Mayor: ${lista.last}');
  print('Menor: ${lista.first}');

  //imprimir el promedio (usando reduce)
  print('Promedio: ${lista.reduce((a, b) => a + b) / lista.length}');

  //Calcular el promedio de la lista usando un for
  int suma = 0;
  for (int i = 0; i < lista.length; i++) {
    suma += lista[i];
  }
  print('Promedio: ${suma / lista.length}');
}
