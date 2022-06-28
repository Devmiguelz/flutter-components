import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('SL'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://culturacolectiva-cultura-colectiva-prod.cdn.arcpublishing.com/resizer/kKMrOIL4rOuZ-Nclfai3hXZ_HWw=/1024x768/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/culturacolectiva/NYAQ3KNWERALBENH75LPKTC3ZM.jpg',
          ),
          maxRadius: 100,
        ),
      ),
    );
  }
}
