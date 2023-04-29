import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milestone_project/core/factories/factory_model.dart';
import 'package:milestone_project/core/widgets/atomics/molecules/p_circle_avatar.dart';

class PUserReel extends StatelessWidget {
  const PUserReel({
    this.isHighLight = false,
    this.size = 65,
  });

  final bool isHighLight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.size,
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                child: PCircleAvatar(
                  'https://source.unsplash.com/random',
                  isHighLight: isHighLight,
                  size: size,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  FactoryModel.make(type: FactoryModel.name).first,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
