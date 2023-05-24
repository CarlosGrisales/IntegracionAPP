import 'package:flutter/material.dart';
import 'package:integracion_app/config/screens/buscarOferta.dart';
import 'package:integracion_app/config/screens/contactos.dart';
import 'package:integracion_app/config/screens/publicarOferta.dart';
import 'package:integracion_app/config/screens/widgets/inkewellCard.dart';
import 'widgets/cardContainer.dart';

class ScreenComercio extends StatelessWidget {
  const ScreenComercio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView(
                  children: <Widget>[
                     
                       InkWellCard(
                          titleCard: 'BUSCAR OFERTA',
                          subtitlecard: 'Aqui puedes buscar las ofertas disponibles.',
                          imageCard: Image.asset('assets/loupe.png'),
                          rutaPage: const BuscarOferta(),),
                      const SizedBox(
                        height: 10,
                      ),
                       InkWellCard(
                          titleCard: 'PUBLICAR OFERTA',
                          subtitlecard: 'Aqui puedes publicar tus vacantes.',
                          imageCard: Image.asset('assets/paid-search.png'),
                          rutaPage: const PublicarOferta(),),
                      const SizedBox(
                        height: 10,
                      ),
                       InkWellCard(
                          titleCard: 'CONTACTOS',
                          subtitlecard: 'Aqui puedes registrar y buscar tus contactos mas importantes',
                          imageCard: Image.asset('assets/sketchbook.png'),
                          rutaPage: const Contactos(),),
                      const SizedBox(
                        height: 10,
                      ),
                  ],
                )
            ),      
          ],
        ),
      ),
      );
    
  }
}
