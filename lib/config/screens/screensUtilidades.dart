import 'package:flutter/material.dart';
import 'package:integracion_app/config/screens/ayudas.dart';
import 'package:integracion_app/config/screens/calendario.dart';
import 'package:integracion_app/config/screens/finanzas.dart';
import 'package:integracion_app/config/screens/widgets/inkewellCard.dart';
import 'widgets/cardContainer.dart';

class ScreenUtilidades extends StatelessWidget {
  const ScreenUtilidades({super.key});

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
                          titleCard: 'FINANZAS',
                          subtitlecard: 'Aqui puedes registrar tu contabilidad y mantener tus cuentas.',
                          imageCard: Image.asset('assets/accounting.png'),
                          rutaPage: const Finanzas(),),
                      const SizedBox(
                        height: 10,
                      ),
                       InkWellCard(
                          titleCard: 'CALENDARIO',
                          subtitlecard: 'Aqui registrar y visualizar tus fechas importantes',
                          imageCard: Image.asset('assets/calendar.png'),
                          rutaPage: const Calendario(),),
                      const SizedBox(
                        height: 10,
                      ),
                       InkWellCard(
                          titleCard: 'AYUDAS',
                          subtitlecard: 'Aqui puedes encontrar ayudas del uso del aplicativo',
                          imageCard: Image.asset('assets/help.png'),
                          rutaPage: const Ayudas(),),
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
