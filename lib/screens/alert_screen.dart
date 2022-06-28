import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: const Text('Alerta'),
              content: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text('Contenido de la alerta'),
                SizedBox(height: 20),
                FlutterLogo(size: 100),
              ]),
              actions: [
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]);
        });
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (builder) {
          return CupertinoAlertDialog(
              title: const Text('Alerta'),
              content: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text('Contenido de la alerta'),
                SizedBox(height: 20),
                FlutterLogo(size: 100),
              ]),
              actions: [
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
            ),
            /* onPressed: () => displayDialogAndroid(context), */
            onPressed: () => {
              Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context)
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
