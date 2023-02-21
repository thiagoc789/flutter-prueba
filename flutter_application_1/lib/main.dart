import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    title: "Mi Primera App",
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("Mi App"),
      )),
      body: Container(
          color: Colors.grey,
          child: Center(
            child: SafeArea(
                child: SingleChildScrollView(
                    child: Column(children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              ),
              Container(
                  decoration: const BoxDecoration(boxShadow: [BoxShadow(blurRadius: 50.0)]),
                  child: const Image(
                    image: AssetImage('images/3145765.png'),
                    width: 400,
                  )),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
              const Text(
                "Titulo",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Color.fromARGB(255, 21, 252, 0)),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
              const Text(
                "Aprender un poco cada día marca la diferencia. Hay estudios que muestran que los estudiantes que hacen del aprendizaje un hábito tienen una mayor probabilidad de alcanzar sus objetivos. Reserva tiempo para aprender y recibe recordatorios con la herramienta de planificación del aprendizaje.Aprender un poco cada día marca la diferencia. Hay estudios que muestran que los estudiantes que hacen del aprendizaje un hábito tienen una mayor probabilidad de alcanzar sus objetivos. Reserva tiempo para aprender y recibe recordatorios con la herramienta de planificación del aprendizaje.Aprender un poco cada día marca la diferencia. Hay estudios que muestran que los estudiantes que hacen del aprendizaje un hábito tienen una mayor probabilidad de alcanzar sus objetivos. Reserva tiempo para aprender y recibe recordatorios con la herramienta de planificación del aprendizaje.",
                textDirection: TextDirection.ltr,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
              const Text(
                "Boton",
                textDirection: TextDirection.rtl,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
              const AddBookButton(),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
              ),
            ]))),
          )),
    );
  }
}

class AddBookButton extends StatefulWidget {
  const AddBookButton({super.key});

  @override
  AddBookButtonState createState() {
    return AddBookButtonState();
  }
}

class AddBookButtonState extends State<AddBookButton> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    var button = isSaved
        ? ElevatedButton(
            onPressed: manageBook,
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 7, 7)),
            child: const Text(
              "Quitar de la libreria",
            ),
          )
        : ElevatedButton(
            onPressed: manageBook,
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 27, 231, 9)),
            child: const Text(
              "Agregar a libreria",
            ),
          );
    return Directionality(
      textDirection: TextDirection.ltr,
      child: button,
    );
  }

  void manageBook() {
    setState(() {
      isSaved = !isSaved;
    });
  }
}
