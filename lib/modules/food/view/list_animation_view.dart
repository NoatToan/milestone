import 'package:flutter/material.dart';
import 'package:milestone_project/core/themes/scaffold/app_base_view.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/widgets/animations/p_slide_to_action.dart';
import 'package:milestone_project/core/widgets/atomics/atoms/p_image_network.dart';
import 'package:milestone_project/core/widgets/atomics/text/p_text_large.dart';

class ListAnimationView extends AppBaseView {
  @override
  Widget body(BuildContext context) {
    final List<String> backgroundImages = [
      'assets/images/bg_1.jpg',
      'assets/images/bg_2.jpg',
      'assets/images/bg_3.jpg',
      'assets/images/bg_4.jpg',
      'assets/images/bg_5.jpg',
      'assets/images/bg_1.jpg',
      'assets/images/bg_2.jpg',
      'assets/images/bg_3.jpg',
      'assets/images/bg_4.jpg',
      'assets/images/bg_5.jpg',
    ];
    // final List<String> tabHeaders = [
    //   'Ẩm thực mới nổi',
    //   'Ẩm thực đường phố',
    //   // 'Ẩm thực sang trọng',
    //   // 'Ẩm thực độc lạ'
    // ];
    PageController PageViewController =
        PageController(initialPage: 0, viewportFraction: 1);

    return RefreshIndicator(
      onRefresh: () async {
        print(123);
      },
      child: PageViewBuilder<String>(
        items: backgroundImages,
        pageViewController: PageViewController,
      ),
    );
  }
}

class MySliverAppBar extends StatefulWidget {
  const MySliverAppBar({
    Key? key,
    required this.tabHeaders,
    required this.innerBoxIsScrolled,
  }) : super(key: key);

  final List<String> tabHeaders;
  final bool innerBoxIsScrolled;

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: widget.tabHeaders.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: widget.innerBoxIsScrolled,
      automaticallyImplyLeading: false,
      pinned: false,
      floating: true,
      snap: true,
      expandedHeight: 80,
      collapsedHeight: 80,
      backgroundColor: Colors.lightBlue.shade300,
      flexibleSpace: Column(
        children: [
          Row(
            children: [
              PImageNetwork(
                'https://hblab.me/ivKDfH',
                alignment: Alignment.centerLeft,
              ),
              Text('Đây là quảng cáo đây =))'),
              GestureDetector(
                onTap: () => {},
                // context.read<FoodBeanBloc>().add(
                //   FoodPaginateLoadMore(),
                // ),
                child: Container(
                  color: Colors.red,
                  child: Text('tap here'),
                ),
              )
            ],
          ),
          TabBar(
            controller: _tabController,
            tabs:
                widget.tabHeaders.map((e) => Tab(text: e.toString())).toList(),
          ),
        ],
      ),
    );
  }
}

class PageViewBuilder<T> extends StatefulWidget {
  const PageViewBuilder({
    Key? key,
    required this.pageViewController,
    required this.items,
  }) : super(key: key);

  final PageController pageViewController;
  final List<T> items;

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        padEnds: false,
        physics: ClampingScrollPhysics(),
        controller: widget.pageViewController,
        scrollDirection: Axis.vertical,
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return FractionallySizedBox(
            widthFactor: 1 / widget.pageViewController.viewportFraction,
            child: InkWell(
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.items[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => FoodFeedDetailPage()));
                          },
                          child: Container(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                          bottom: MediaQuery.of(context).padding.bottom,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Container(
                            color: AppInheritedWidget.of(context)
                                .themeData
                                .colorScheme.background
                                .withOpacity(.5),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 75,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      minHeight: double.infinity),
                                  child: PSlideToAction(
                                    child: const PTextLarge(
                                      'Drag to action',
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          );
        });
  }
}

class TweenItem extends StatelessWidget {
  const TweenItem({
    Key? key,
    required this.child,
    required this.selectedIndex,
    required this.itemIndex,
    required this.scale,
  }) : super(key: key);

  final Widget child;
  final int selectedIndex;
  final int itemIndex;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 200),
      tween: Tween(begin: scale, end: scale),
      builder: (BuildContext context, double value, Widget? child) {
        return Transform.scale(scale: value, child: child);
      },
      child: child,
    );
  }
}
