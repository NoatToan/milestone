import 'package:flutter/material.dart';
import 'package:milestone_project/core/widgets/atomics/molecules/p_user_reel.dart';

class FeedHorizontalReelWidget extends StatelessWidget {
  const FeedHorizontalReelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 80),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(
                        child: PUserReel(
                          size: 60,
                          isHighLight: index % 2 == 0,
                        ),
                      ),
                      if (index < 10)
                        const SizedBox(
                          width: 10,
                        )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}





