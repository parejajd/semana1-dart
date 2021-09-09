//3. Programa para verificar si una cadena es palindroma
import 'dart:io';

main(List<String> args) {
  //Cadena ingresada por el usuario
  print('Ingrese una cadena: ');
  String? cadena = stdin.readLineSync();
  if (cadena != null) {
    var esPali = esPalindroma(cadena);
    print('La cadena "$cadena" ${esPali ? "es" : "no es"} palindroma');
  } else {
    print('No se ingreso ninguna cadena');
  }
}

//Funcion que valida si la cadena es palindroma
bool esPalindroma(String cadena) {
  //Se quitan los espacios al final y al inicio de la cadena
  cadena = cadena.trim();
  //Se convierte la cadena a minusculas
  cadena = cadena.toLowerCase();
  //Se quitan los espacios en la cadena
  cadena = cadena.replaceAll(' ', '');

  //Lista para almacenar la cadena original
  List<String> cadenaOriginal = cadena.split('');
  imprimirLista("Original", cadenaOriginal);

  //Lista para almacenar la cadena invertida
  List<String> cadenaInvertida = cadena.split('').reversed.toList();
  imprimirLista("Invertida", cadenaInvertida);

  //Se valida si la cadena original es igual a la cadena invertida
  for (int i = 0; i < cadenaOriginal.length; i++) {
    if (cadenaOriginal[i] != cadenaInvertida[i]) {
      return false;
    }
  }
  return true;
}

//funcion para imprimir la lista en la misma linea
void imprimirLista(String titulo, List<String> lista) {
  if (lista.length > 0) {
    print("$titulo ${lista.join(', ')}");
  } else {
    print('La lista esta vacia');
  }
}
