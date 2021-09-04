import 'dart:math';

main(List<String> args) {
  //Generar una lista aleatoria de 6 elementos con numeros del 1 al 100
  List<Persona> lista =
      new List<Persona>.generate(6, (i) => Persona(Random().nextInt(100)));

  lista.forEach((element) {
    print(element.edad);
  });

  //Ordenar la lista
  lista.sort((a, b) => a.edad.compareTo(b.edad));
  lista.forEach((element) {
    print(element.edad);
  });

  //imprimir el mayor y el menor
  print('Mayor: ${lista.last.edad}');
  print('Menor: ${lista.first.edad}');

  //Calcular el promedio de la lista usando un for
  int suma = 0;
  for (int i = 0; i < lista.length; i++) {
    suma += lista[i].edad;
  }
  print('Promedio: ${suma / lista.length}');
}

class Persona {
  int edad;
  Persona(this.edad);
}
