//4. Imprimir los valores de la lista que sean pares
import 'dart:math';

main(List<String> args) {
  //Lista de numeros aleatorios
  List<int> lista = new List<int>.generate(20, (i) => Random().nextInt(100));
  lista.sort();
  imprimirLista("Lista Original", lista);
  //Lista de numeros pares
  List<int> listaPares = <int>[];
  for (int i = 0; i < lista.length; i++) {
    if (lista[i] % 2 == 0) {
      listaPares.add(lista[i]);
    }
  }
  listaPares.sort();
  imprimirLista("Lista de pares", listaPares);
}

//funcion para imprimir la lista en la misma linea
void imprimirLista(String titulo, List<int> lista) {
  if (lista.length > 0) {
    print("$titulo ${lista.join(', ')}");
  } else {
    print('La lista esta vacia');
  }
}
