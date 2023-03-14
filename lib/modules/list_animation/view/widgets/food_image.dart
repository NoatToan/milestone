import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milestone_project/core/widgets/p_image_network.dart';

class FoodImage extends StatelessWidget {
  const FoodImage(
    this.url, {
    this.height = 300,
    this.width = 200,
  });

  final String url;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return PImageNetwork(
      url,
      height: height,
      width: width,
    );
  }
}
