import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos Scaffold para la AppBar y el body
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff51718c),
        title: const Text('Pantalla Uno - Diego 1296'), // Título de la pantalla
      ),
      body: const Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legalese',
          applicationName: 'Flutter App',
          applicationVersion: 'version 1.0.0',
          aboutBoxChildren: [
            Text('This is a text created by Flutter Mapp'),
          ],
        ),
      ),
    );
  }
}
