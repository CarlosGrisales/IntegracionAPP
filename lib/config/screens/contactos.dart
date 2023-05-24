import 'package:flutter/material.dart';

class Contactos extends StatelessWidget {
  const Contactos({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(166, 63, 81, 181),
                              width: 2),
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(232, 178, 218, 250),
                              Color.fromARGB(206, 178, 224, 250),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.35, 0.90],
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 93, 93, 100),
                              offset: Offset(-4, 3),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(
                                          Icons.arrow_back,
                                        ),
                                      ), 
                                    ),
                                    const SizedBox(width: 30,),
                                    const Text(
                                      "CONTACTOS",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                              const SizedBox(height: 20),
                              const Text(
                                  "¡Bienvenidos a nuestro taller de confecciones, donde los hilos se entrelazan para crear auténticas obras de arte! Aquí, la imaginación toma forma y cada puntada cuenta una historia única. En nuestro taller, el amor por la moda se combina con la maestría artesanal para dar vida a prendas que reflejan la personalidad y estilo de cada individuo. Nuestro equipo de talentosos diseñadores y costureros trabajan en perfecta armonía, fusionando técnicas tradicionales con las últimas tendencias. Cada prenda que sale de nuestras manos es un testimonio de nuestra dedicación y pasión por nuestro oficio!",
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                                  const SizedBox(height: 20),
                              SizedBox(
                                height: 300,
                                child: Image.asset('assets/sketchbook.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]))),
    );
  }
}
