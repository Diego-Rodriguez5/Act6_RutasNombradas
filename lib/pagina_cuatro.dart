import 'package:flutter/material.dart';

//! AlertDialog

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff51718c),
        title: const Text('Pantalla Tres - Diego'), // Título de la pantalla
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade300, // Color del botón
          ),
          child: const Text(
            'Mostrar Diálogo de Alerta',
            style: TextStyle(color: Colors.white), // Color del texto del botón
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor:
                    Colors.grey.shade200, // Color de fondo del AlertDialog
                title: const Text(
                  'Flutter Mapp',
                  style: TextStyle(
                      color: Colors.blue), // Color del título del AlertDialog
                ),
                contentPadding: const EdgeInsets.all(20.0),
                content: const Text(
                  'Este es el Diálogo de Alerta',
                  style: TextStyle(
                      color: Colors
                          .black87), // Color del contenido del AlertDialog
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Cerrar',
                      style: TextStyle(
                          color: Colors.redAccent), // Color del botón "Cerrar"
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
