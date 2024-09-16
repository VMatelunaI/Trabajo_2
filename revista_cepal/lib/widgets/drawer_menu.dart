// Proyecto: Unidad 2
// Descripción: Implementación de páginas funcionales usando widgets en Flutter
// Autor: Víctor Mateluna Iturrieta
// Origen: Basado en clases de Computación Móvil
// Propósito: Replicación de una página web en Flutter
// Sitio web replicado: https://www.cepal.org/es/publicaciones/tipo/revista-cepal
// ------------------------------------------------------------------------------

import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Drawer
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF003366), // Color acorde a la página web
            ), // BoxDecoration
            child: Text(
              'Menú Principal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ), // TextStyle
            ), // Text
          ), // DrawerHeader
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context); // Cierra el menú
            }, // onTap
          ), // ListTile Inicio
          ListTile(
            leading: const Icon(Icons.article),
            title: const Text('Publicaciones'),
            onTap: () {
              Navigator.pop(context);
            }, // onTap
          ), // ListTile Publicaciones
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Acerca de CEPAL'),
            onTap: () {
              Navigator.pop(context);
            }, // onTap
          ), // ListTile Acerca de
        ], // <Widget>[]
      ), // ListView
    ); // Drawer
  }
}
