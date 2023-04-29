import 'package:flutter/material.dart';
import 'package:milestone_project/core/widgets/atomics/atoms/p_image_network.dart';

class PCircleAvatar extends StatelessWidget {
  const PCircleAvatar(
    this.url, {
    this.borderRadius,
    this.isHighLight = false,
    this.size = 65,
  });

  final String url;
  final BorderRadius? borderRadius;
  final bool isHighLight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        // color: isHighLight ? Colors.red : Colors.transparent,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: isHighLight
              ? <Color>[
                  Color(0xffFECD00),
                  Color(0xffF9373F),
                  Color(0xffC91339),
                ]
              : <Color>[Colors.transparent, Colors.transparent],
          // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Padding(
        padding: isHighLight ? EdgeInsets.all(size * 0.04) : EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(99),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: PImageNetwork(
              url,
              width: size,
              height: size,
              borderRadius: borderRadius ?? BorderRadius.circular(99),
            ),
          ),
        ),
      ),
    );
  }
}
