import 'package:flutter/material.dart';
import 'package:milestone_project/gen/assets.gen.dart';

class PBasicHeader extends StatelessWidget {
  const PBasicHeader({
    super.key,
    required this.innerBoxIsScrolled,
  });

  final bool innerBoxIsScrolled;

  @override
  Widget build(BuildContext context) {
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Assets.images.icInstagram.svg(),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        leading: const SizedBox(),
        leadingWidth: 0,
        elevation: 0,
        floating: true,
        forceElevated: innerBoxIsScrolled,
        actions: [
          Row(
            children: [
              GestureDetector(
                child: Assets.images.icMessenger.svg(),
              ),
              const SizedBox(
                width: 20.0,
              ),
              GestureDetector(
                child: Assets.images.icRoundedAdd.svg(),
              ),
              const SizedBox(
                width: 15.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
