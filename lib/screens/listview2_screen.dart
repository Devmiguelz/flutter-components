import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    "Dragon Ball Z",
    "Naruto",
    "One Piece",
    "Death Note",
    "Attack on Titan",
    "Black Clover",
    "Mega man"
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () => {},
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
