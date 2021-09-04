main(List<String> args) {
  //Instancia de clase persona
  var persona = Persona("Juan", "Pareja", 33);
  print(persona);

  //Instancia de clase padre
  var padre = Padre("Juan", "Pareja", 33, hijos: 1);
  print(padre);

  //Instancia de clase Auto
  var auto = Auto();
  print("Esta encendido ${auto.vehiculoEncendido()}");

  //Instancia de clase Moto
  var moto = Moto();
  print("Esta encendido ${moto.vehiculoEncendido()}");

  //instancia de taxi
  var taxi = Taxi();
  print(
      "Esta encendido ${taxi.vehiculoEncendido()} y tiene ${taxi.llantas} y tipo ${taxi.tipoVehiculo()}");

  //instancia de lancha
  var lancha = Lancha();
  print(
      "Esta encendido ${lancha.vehiculoEncendido()} y tiene ${lancha.motores} y tipo ${lancha.tipoVehiculo()}");
}

class Padre extends Persona {
  int hijos;
  Padre(String nombre, String apellido, int edad, {required this.hijos})
      : super(nombre, apellido, edad);
}

class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona(this.nombre, this.apellido, this.edad);
}

//Clase abstracta
abstract class Vehiculo {
  String? placa;
  bool vehiculoEncendido();
}

//Clase que hereda de la abstracta
class Auto extends Vehiculo {
  bool vehiculoEncendido() => true;
}

//Clase que implementa la interfaz
class Moto implements Vehiculo {
  String? placa;
  bool vehiculoEncendido() => false;
}

mixin Terrestre {
  int? llantas;
  int? kilometraje;

  tipoVehiculo() => "Terrestre";
}

mixin Acuatico {
  int? motores;

  tipoVehiculo() => "Acuatico";
}

class Taxi extends Vehiculo with Terrestre {
  @override
  bool vehiculoEncendido() => true;
}

class Lancha extends Vehiculo with Acuatico {
  @override
  bool vehiculoEncendido() => true;
}
