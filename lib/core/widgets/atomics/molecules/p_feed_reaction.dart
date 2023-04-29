import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milestone_project/gen/assets.gen.dart';

class PFeedReaction extends StatefulWidget {
  const PFeedReaction({
    this.isShowName = true,
    this.isHighLight = false,
    this.width = 65,
    this.height = 65,
  });

  final bool isShowName;
  final bool isHighLight;
  final double height;
  final double width;

  @override
  State<PFeedReaction> createState() => _PFeedReactionState();
}

class _PFeedReactionState extends State<PFeedReaction> {
  bool _isLike = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            _isLike = !_isLike;
            setState(() {});
          },
          child: _isLike
              ? Assets.images.icRedHeart.svg()
              : Assets.images.icHeart.svg(),
        ),
        GestureDetector(
          child: Assets.images.icThinkingCloud.svg(),
        ),
        GestureDetector(
          child: Assets.images.icPlaneShare.svg(),
        ),
      ],
    );
  }
}
