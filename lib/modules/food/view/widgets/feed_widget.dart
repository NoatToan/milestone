import 'package:flutter/material.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/widgets/atomics/atoms/P_bookmark.dart';
import 'package:milestone_project/core/widgets/atomics/atoms/p_dot_indicator.dart';
import 'package:milestone_project/core/widgets/atomics/molecules/p_feed_reaction.dart';
import 'package:milestone_project/core/widgets/atomics/molecules/p_user_header.dart';
import 'package:milestone_project/gen/assets.gen.dart';
import 'package:milestone_project/modules/food/view/mixins/feed_cta_mixin.dart';

class FeedWidget extends StatefulWidget with FeedCTAMixin {
  const FeedWidget({
    Key? key,
    required int this.keyItem,
    required int this.totalImages,
  }) : super(key: key);

  final int totalImages;
  final int keyItem;

  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  final PageController _imagePageController = PageController(initialPage: 0);
  int _selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: .5,
          color: AppInheritedWidget.of(context).themeData.dividerColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PUserHeader(
                isHighLight: widget.keyItem % 2 == 0,
                width: 35,
                height: 35,
              ),
              GestureDetector(
                  onTap: () => widget.showFeedCTA(context),
                  child: Assets.images.icCta.svg())
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _imagePageController,
                  onPageChanged: (newPage) {
                    _selectedImageIndex = newPage;
                    setState(() {});
                  },
                  itemCount: widget.totalImages,
                  itemBuilder: (BuildContext context, int index) {
                    return Assets.images.bg1.image(
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 1, child: PFeedReaction()),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.totalImages,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 1,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return PDotIndicator(
                        isActive: index == _selectedImageIndex,
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PBookMark(),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
