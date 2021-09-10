//5. Implementación de herencia y mixin
main(List<String> args) {
  var artista =
      new Artista("Juan David", 36, "Pintura al olea", "El pintor", "La Plaza");
  artista.dibujar("Artista");

  var ingeniero =
      new Ingeniero("Juan David", 36, 15, "CreApps", "Sistemas y computación");
  ingeniero.dibujar("Ingeniero");
  ingeniero.leer("Ingeniero");

  var doctor =
      new Doctor("Juan David", 36, "Cirugia Plastica", "Todo es posible", 15);

  doctor.ejercitarse("Doctor");
  doctor.leer("Doctor");

  var boxeador =
      new Boxeador("Juan David", 36, "Boxeo", "Completo", 112, "Rojo");
  boxeador.boxear("Boxeador");
  boxeador.ejercitarse("Boxeador");
}

abstract class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);
}

class Artista extends Persona with Dibujar {
  String estilo;
  String nombreArtistico;
  String galeria;

  Artista(
      String nombre, int edad, this.estilo, this.nombreArtistico, this.galeria)
      : super(nombre, edad);
}

class Ingeniero extends Persona with Dibujar, Leer {
  String tipoIngenieria;
  String nombreEmpresa;
  int aniosExperiencia;

  Ingeniero(String nombre, int edad, this.aniosExperiencia, this.nombreEmpresa,
      this.tipoIngenieria)
      : super(nombre, edad);
}

class Doctor extends Persona with Ejercitarse, Leer {
  String especialidad;
  String nombreClinica;
  int aniosExperiencia;

  Doctor(String nombre, int edad, this.especialidad, this.nombreClinica,
      this.aniosExperiencia)
      : super(nombre, edad);
}

abstract class Atleta extends Persona {
  String deporte;

  Atleta(String nombre, int edad, this.deporte) : super(nombre, edad);
}

class Boxeador extends Atleta with Ejercitarse, Boxear {
  String colorCamiseta;
  double peso;
  String categoria;

  Boxeador(
    String nombre,
    int edad,
    String deporte,
    this.categoria,
    this.peso,
    this.colorCamiseta,
  ) : super(nombre, edad, deporte);
}

mixin Dibujar {
  void dibujar(String rol) {
    print('Dibujando como un $rol');
  }
}

mixin Leer {
  void leer(String rol) {
    print('Leyendo como un $rol');
  }
}

mixin Ejercitarse {
  void ejercitarse(String rol) {
    print('Ejercitando como un $rol');
  }
}

mixin Boxear {
  void boxear(String rol) {
    print('Boxeando como un $rol');
  }
}
