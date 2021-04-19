import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;

  const ImageCard({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(image),
    );
  }
}
