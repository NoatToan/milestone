import 'package:flutter/material.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/gen/assets.gen.dart';

class PImageNetwork extends StatelessWidget {
  const PImageNetwork(
    this.url, {
    this.height = 30,
    this.width = 30,
    this.alignment = Alignment.center,
    this.borderRadius = BorderRadius.zero,
    this.fit = BoxFit.cover,
  });

  final String url;
  final double height;
  final double width;
  final Alignment alignment;
  final BorderRadius borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppInheritedWidget.of(context).themeData.colorScheme.background,
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.network(
          url,
          height: height,
          width: width,
          fit: fit,
          alignment: alignment,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(
              child: CircularProgressIndicator(
                color: AppInheritedWidget.of(context).themeData.primaryColor,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
          errorBuilder: _defaultImageBuilder,
        ),
      ),
    );
  }

  Widget _defaultImageBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return Center(
        child: Assets.images.foodEmptyImage.svg(width: 100, height: 100));
  }
}
