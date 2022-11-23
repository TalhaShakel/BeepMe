import 'package:flutter/material.dart';

class ImageUtils{


  static Widget buildImage(String assetName, [double width = 350, double height = 350]) {
    return Image.asset(assetName, width: width, height: height,);
  }
}