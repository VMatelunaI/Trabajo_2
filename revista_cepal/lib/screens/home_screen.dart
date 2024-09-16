// Proyecto: Unidad 2
// Descripción: Implementación de páginas funcionales usando widgets en Flutter
// Autor: Víctor Mateluna Iturrieta
// Origen: Basado en clases de Computación Móvil
// Propósito: Replicación de una página web en Flutter
// Sitio web replicado: https://www.cepal.org/es/publicaciones/tipo/revista-cepal
// ------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import '../widgets/drawer_menu.dart'; // Menú lateral
import '../widgets/publication_tile.dart'; // Importamos el widget reutilizable

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold
      appBar: AppBar(
        // AppBar
        title: const Text('Revista CEPAL'),
        backgroundColor:
            const Color(0xFF003366), // Color acorde a la página web
      ), // AppBar
      drawer: const DrawerMenu(), // Menú lateral desde un widget separado
      body: SingleChildScrollView(
        // Permite desplazar si el contenido es largo
        child: Container(
          padding: const EdgeInsets.all(16.0), // Margen interno
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Revista CEPAL',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003366), // Color azul de CEPAL
                ), // TextStyle
              ), // Título
              const SizedBox(height: 16.0), // Espaciador
              const Text(
                'La Revista de la CEPAL es una publicación especializada en '
                'temas económicos y sociales.',
                style: TextStyle(fontSize: 16),
              ), // Descripción
              const SizedBox(height: 16.0), // Espaciador
              const Text(
                'Últimas Publicaciones:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ), // TextStyle
              ), // Subtítulo
              const SizedBox(height: 8.0), // Espaciador
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  PublicationTile(
                    imageUrl:
                        'https://www.cepal.org/sites/default/files/styles/publication_image/public/images/revista_cepal_142_portada.jpg',
                    title: 'Revista CEPAL No. 142',
                    subtitle: 'Publicación de abril de 2024.',
                  ), // Publicación 1
                  PublicationTile(
                    imageUrl:
                        'https://www.cepal.org/sites/default/files/styles/publication_image/public/images/revista_cepal_140_portada.jpg',
                    title: 'Revista CEPAL No. 140',
                    subtitle: 'Publicación de agosto de 2023.',
                  ), // Publicación 2
                  PublicationTile(
                    imageUrl:
                        'https://www.cepal.org/sites/default/files/styles/publication_image/public/images/revista_cepal_139_portada.jpg',
                    title: 'Revista CEPAL No. 139',
                    subtitle: 'Publicación de abril de 2023.',
                  ), // Publicación 3
                ], // <Widget>[] // publicaciones
              ), // ListView
            ], // <Widget>[]
          ), // Column
        ), // Container
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
