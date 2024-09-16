// Proyecto: Unidad 2
// Descripción: Implementación de páginas funcionales usando widgets en Flutter
// Autor: Víctor Mateluna Iturrieta
// Origen: Basado en clases de Computación Móvil
// Propósito: Replicación de una página web en Flutter
// Sitio web replicado: https://www.cepal.org/es/publicaciones/tipo/revista-cepal
// ------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:revista_cepal/routes/app_routes.dart'; // Importar las rutas

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revista CEPAL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // ThemeData
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    ); // MaterialApp
  }
}
