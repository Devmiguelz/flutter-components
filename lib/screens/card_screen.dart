import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              texto: 'Un hermoso paisaje',
              imageUrl:
                  'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://www.wallpaperup.com/uploads/wallpapers/2012/08/14/10827/3c1e328cf1b34fc01671951bd1f76561-700.jpg'),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://www.wallpaperup.com/uploads/wallpapers/2013/08/19/135949/00297a2528269ffcd01955cb6acb0a12.jpg'),
            SizedBox(height: 10),
          ]),
    );
  }
}
