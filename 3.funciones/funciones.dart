void main(List<String> args) {
  print(obtenerNombre("Juan"));
  print(obtenerNombre2("Juan Flecha"));
  print(funcionParametroDefecto());
  print(funcionParametroDefecto(valor: "Juan Parametro"));
  print(funcionParametroDefecto2(valor2: "Juan Parametro 2"));
}

//Función que recibe un nombre y lo devuelve
String obtenerNombre(String valor) {
  return 'valor funcion $valor';
}

//Función que recibe un nombre y lo devuelve usando notación flecha
String obtenerNombre2(String valor) => 'valor funcion $valor';

//Función que recibe un nombre usando named parameters
String funcionParametroDefecto({String valor = 'Pedro'}) =>
    'valor funcion $valor';

//Funcion con named parameters nullable
String funcionParametroDefecto2({String? valor, String valor2 = 'Pedro'}) =>
    'valor funcion $valor $valor2';

//Funcion con named parameters nullable y requerido
String funcionParametroDefecto3(
        {String? valor, required String valor2, String valor3 = "Pedro"}) =>
    'valor funcion $valor $valor2 $valor3';
