import 'package:flutter/material.dart';

class DragonImageLoadWrapper {
  Image loadImage(String imgUrl) {
    return Image.network(
      imgUrl,
      width: 150,
      height: 150,
    );
  }
}
