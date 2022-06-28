import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    "Dragon Ball Z",
    "Naruto",
    "One Piece",
    "Death Note",
    "Attack on Titan",
    "Black Clover",
    "Mega man"
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}
