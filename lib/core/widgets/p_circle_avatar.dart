import 'package:flutter/cupertino.dart';
import 'package:milestone_project/core/widgets/p_image_network.dart';

class PCircleAvatar extends StatelessWidget {
  const PCircleAvatar(
    this.url, {
    this.borderRadius,
  });

  final String url;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return PImageNetwork(
      url,
      borderRadius: borderRadius ?? BorderRadius.circular(15),
    );
  }
}
