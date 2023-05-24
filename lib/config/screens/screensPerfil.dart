import 'package:flutter/material.dart';
import 'package:integracion_app/config/screens/inventario.dart';
import 'package:integracion_app/config/screens/widgets/inkewellCard.dart';
import 'historial.dart';
import 'taller.dart';
import 'widgets/cardContainer.dart';

class ScreenPerfil extends StatelessWidget {
  const ScreenPerfil({super.key});

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
                          titleCard: 'MI TALLER',
                          subtitlecard: 'Aqui puedes registrar el estado de tu maquinas.',
                          imageCard: Image.asset('assets/needle.png'),
                          rutaPage: const MiTaller(),),
                          
                      const SizedBox(
                        height: 10,
                      ),
                       InkWellCard(
                          titleCard: 'INVENTARIO',
                          subtitlecard: 'Aqui puedes mantener el registro de todo tu inventario.',
                          imageCard: Image.asset('assets/needlework.png'),
                          rutaPage: const Inventario(),),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWellCard(titleCard: 'HISTORIAL',
                          subtitlecard: 'Aqui puedes registrar todas las confecciones que has realizado.',
                          imageCard: Image.asset('assets/dressmaker.png'),
                          rutaPage: const Historial(),
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
