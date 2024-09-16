// Proyecto: Unidad 2
// Descripción: Implementación de páginas funcionales usando widgets en Flutter
// Autor: Víctor Mateluna Iturrieta
// Origen: Basado en clases de Computación Móvil
// Propósito: Replicación de una página web en Flutter
// Sitio web replicado: https://www.cepal.org/es/publicaciones/tipo/revista-cepal
// ------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:revista_cepal/screens/home_screen.dart'; // Pantalla principal
import 'package:revista_cepal/screens/error_screen.dart';

class AppRoutes {
  static const initialRoute = '/';
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (BuildContext context) => const HomeScreen(),
  };

// Aún sin implementar funcionalidades de pantalla de manejo de errores
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
