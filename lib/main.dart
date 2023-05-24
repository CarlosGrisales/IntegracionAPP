import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:integracion_app/config/screens/authentication.dart';
import 'package:integracion_app/config/screens/screensPerfil.dart';
import 'config/screens/widgets/navigationBar.dart';
import 'config/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return 
    ///se intenta loguear con el siguiente codigo pero aun no es funcional///
    /*MaterialApp(
      title: 'ELSA app',
      home: Scaffold(
        body: Center(
          child: MaterialButton(
            onPressed: () async {
              User? user = await Authenticator.iniciarSesion(context: context);
              prints(user?.displayName);
            },
            color: Colors.blue,
            child: Icon(FontAwesomeIcons.google),
            textColor: Colors.white,
          ),
        ),
      ),
    );*/

    MaterialApp(
      title: 'ELSA APP',
      theme: AppTheme(selectedColor: 1).theme(),
      debugShowCheckedModeBanner: false,
      home: const NavigationBarIntegration()
    );
  }
}
