
import 'package:flutter/material.dart';
import 'package:integracion_app/config/screens/screensComercio.dart';
import 'package:integracion_app/config/screens/screensPerfil.dart';
import 'package:flutter_animated_icons/flutter_animated_icons.dart';
import 'package:integracion_app/config/screens/screensUtilidades.dart';
import 'package:integracion_app/config/screens/widgets/menuDrawer.dart';

class NavigationBarIntegration extends StatefulWidget {
  const NavigationBarIntegration({super.key});

  @override
  State<NavigationBarIntegration> createState() => _NavigationBarIntegrationState();
}

class _NavigationBarIntegrationState extends State<NavigationBarIntegration> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ScreenPerfil(),
    ScreenComercio(),
    ScreenUtilidades(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: MenuDrawer(),   
      appBar: AppBar(
        backgroundColor: Color.fromARGB(213, 61, 90, 254),
        
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          
          children:  [
           Container(
             child: const Text(
              'ELSA APP', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white70, fontSize: 30),),),
           const SizedBox(width: 60,),
          
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.topRight,
          child: Image.asset('assets/sewing4.png',
                        width: 50),
    ),
    ]),
      
        centerTitle: true,
      ),
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(172, 61, 90, 254),
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
             icon: Image.asset('assets/sewing3.png',
                        width: 50),
                        label: 'Perfil',
          ),
          BottomNavigationBarItem(
             icon: Image.asset('assets/sewing1.png',
             width: 50),
            label: 'Comercio',
          ),
          BottomNavigationBarItem(
             icon: Image.asset('assets/sewing2.png',
                        width: 50),
            label: 'Utilidades',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(213, 0, 255, 179),
        onTap: _onItemTapped,
      ),
    );
  }
}
