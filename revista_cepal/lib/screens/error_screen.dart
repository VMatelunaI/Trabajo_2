// Proyecto: Unidad 2
// Descripción: Implementación de páginas funcionales usando widgets en Flutter
// Autor: Víctor Mateluna Iturrieta
// Origen: Basado en clases de Computación Móvil
// Propósito: Replicación de una página web en Flutter
// Sitio web replicado: https://www.cepal.org/es/publicaciones/tipo/revista-cepal
// ------------------------------------------------------------------------------
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Manejo de errores')),
        body: const Center(
          child: Text('Manejo de errores'),
        ));
  }
}
