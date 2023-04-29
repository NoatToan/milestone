import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milestone_project/core/factories/factory_model.dart';
import 'package:milestone_project/core/widgets/atomics/molecules/p_circle_avatar.dart';

class PUserHeader extends StatelessWidget {
  const PUserHeader({
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
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              child: PCircleAvatar(
                'https://source.unsplash.com/random',
                isHighLight: isHighLight,
                size: height,
              ),
            ),
            if (isShowName)
              const SizedBox(
                width: 8.0,
              ),
            if (isShowName)
              Row(
                children: [
                  Text(
                    FactoryModel.make(type: FactoryModel.name).first,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
          ],
        ));
  }
}
