//2. Programa que genera dos listas de numeros aleatorios enteros
// y genera una tercera con los elementos comunes sin duplicados de las dos
// listas anteriores.

import 'dart:math';

main(List<String> args) {
  int cantidadNumeros = new Random().nextInt(20);
  List<int> lista1 =
      new List<int>.generate(cantidadNumeros, (i) => Random().nextInt(100));
  imprimirLista(lista1);

  cantidadNumeros = new Random().nextInt(20);
  List<int> lista2 =
      new List<int>.generate(cantidadNumeros, (i) => Random().nextInt(100));
  imprimirLista(lista2);

  List<int> lista3 = <int>[];

  if (lista1.length > lista2.length) {
    for (int i = 0; i < lista1.length; i++) {
      //Si la segunda lista contiene el elemento de la primera lista
      if (lista2.contains(lista1[i]) && !lista3.contains(lista1[i])) {
        //Se agrega a la tercera lista
        lista3.add(lista1[i]);
      }
    }
  } else {
    for (int i = 0; i < lista2.length; i++) {
      //Si la primera lista contiene el elemento de la segunda lista
      if (lista1.contains(lista2[i]) && !lista3.contains(lista2[i])) {
        //Se agrega a la tercera lista
        lista3.add(lista2[i]);
      }
    }
  }

  //Se imprime la lista
  imprimirLista(lista3);
}

//funcion para imprimir la lista en la misma linea
void imprimirLista(List<int> lista) {
  if (lista.length > 0) {
    print(lista.join(', '));
  } else {
    print('La lista esta vacia');
  }
}
