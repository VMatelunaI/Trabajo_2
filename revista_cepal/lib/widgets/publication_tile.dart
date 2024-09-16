// Proyecto: Unidad 2
// Descripción: Implementación de páginas funcionales usando widgets en Flutter
// Autor: Víctor Mateluna Iturrieta
// Origen: Basado en clases de Computación Móvil
// Propósito: Replicación de una página web en Flutter
// Sitio web replicado: https://www.cepal.org/es/publicaciones/tipo/revista-cepal
// ------------------------------------------------------------------------------

import 'package:flutter/material.dart';

class PublicationTile extends StatelessWidget {
  final String imageUrl; // URL de la imagen
  final String title; // Título de la publicación
  final String subtitle; // Subtítulo de la publicación

  const PublicationTile({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    super.key,
  }); // Constructor

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        imageUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ), // Carga de imagen desde URL
      title: Text(title), // Título
      subtitle: Text(subtitle), // Subtítulo
    ); // ListTile
  }
}
