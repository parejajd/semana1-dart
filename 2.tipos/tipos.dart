void main(List<String> args) {
  int edad = 23;
  double peso = 75.5;
  num edadNum = edad;
  num pesoNum = peso;

  //Manejo de cadenas
  String nombre = 'Juan';
  print(nombre);
  String apellido = "Perez";
  print(apellido);
  String variableEnIngles = "It's easy";
  print(variableEnIngles);
  String variableEnIngles2 = 'It\'s easy';
  print(variableEnIngles2);

  String nombreCompleto = '$nombre $apellido';
  print(nombreCompleto);

  String concatenacion = "Valor 1" + "Valor 2";
  print(concatenacion);

  String concatenacion2 = "Valor 1" 'Valor 2';
  print(concatenacion2);

  String concatenacion3 = "Valor 1" "Valor 2";
  print(concatenacion3);

  String interpolacion = 'Nombre: $nombre\nApellido: $apellido';
  print(interpolacion);

  String interpolacion2 =
      'Nombre: ${nombre.toUpperCase()}\nApellido: ${apellido.toLowerCase()}';
  print(interpolacion2);

  String interpolacion3 = 'Edad ${10 + 10 + 10 + 2}';
  print(interpolacion3);

  String multiLinea = '''Linea 1
                    Linea 2
                    Linea 3
                    Linea 4''';
  print(multiLinea);

  String rawString = r'C:\Users\Juan';
  print(rawString);

  //Manejo de booleanos
  String textoVacio = '';
  if (textoVacio.isEmpty) {
    print('El texto esta vacio');
  }

  var variableBoolNull = null;
  if (variableBoolNull == null) {
    print('La variable es null');
  }

  //Manejo de listas
  var listaDeCadenas = ['Juan', 'Pedro', 'Maria'];
  print(listaDeCadenas);
  //Acceso a indice
  print(listaDeCadenas[0]);
  //Acceso al ultimo
  print(listaDeCadenas.last);
  //Inversión de lista
  print(listaDeCadenas.reversed);
  //Longitud de lista
  print(listaDeCadenas.length);

  //Otra lista de cadenas
  var listaDeCadenasFrutas = ['Manzana', 'Pera', 'Naranja'];
  //Concatenación de listas
  var lista3 = [...listaDeCadenas, ...listaDeCadenasFrutas];
  print(lista3);

  List<int> listaNumeros = [1, 2, 3, 4, 5];
  print(listaNumeros);

  //Null-awared list
  var listaNull = [1, 2, 3, null, 5];

  //Maps
  var mapa = {'red': 'rojo', 'green': 'verde', 'blue': 'azul'};
  print(mapa);
  mapa.forEach((key, value) {
    print('$key: $value');
  });
  mapa.forEach((key, value) => print('$key: $value'));
}
