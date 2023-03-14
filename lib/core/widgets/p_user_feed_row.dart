import 'package:flutter/cupertino.dart';
import 'package:milestone_project/core/factories/factory_model.dart';
import 'package:milestone_project/core/widgets/p_circle_avatar.dart';

class PUserFeedRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(child: PCircleAvatar('https://source.unsplash.com/random')),
          const SizedBox(
            width: 8,
          ),
          Text(
            FactoryModel.make(type: FactoryModel.name).first,
          )
        ],
      ),
    );
  }
}
