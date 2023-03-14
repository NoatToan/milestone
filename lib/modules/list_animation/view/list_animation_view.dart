import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:milestone_project/app_base_view.dart';
import 'package:milestone_project/core/app_food/models/nutrition.dart';
import 'package:milestone_project/core/extensions/string_null_ext.dart';
import 'package:milestone_project/core/widgets/p_image_network.dart';
import 'package:milestone_project/core/widgets/p_user_feed_row.dart';
import 'package:milestone_project/modules/list_animation/view/widgets/food_image.dart';
import 'package:milestone_project/modules/list_animation/vm/food_bloc.dart';

class ListAnimationView extends AppBaseView {
  @override
  Widget body(BuildContext context) {
    final List<String> tabHeaders = [
      'Ẩm thực mới nổi',
      'Ẩm thực đường phố',
      // 'Ẩm thực sang trọng',
      // 'Ẩm thực độc lạ'
    ];

    return DefaultTabController(
      length: tabHeaders.length,
      child: NestedScrollView(
        body: TabBarView(
          children: tabHeaders.map((e) {
            return CustomScrollView(
              key: PageStorageKey<String>(e.toString()),
              physics: ClampingScrollPhysics(),
              slivers: [
                // tabHeaders.map((String name) {}
                BlocBuilder(
                    bloc: BlocProvider.of<FoodBeanBloc>(context),
                    builder: (context, FoodBeenState state) {
                      final List<Nutrition> paginateList =
                          state.nutritionsPaginate;

                      return SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: paginateList.length,
                          ((context, int index) {
                            return _buildItem(
                                index, context, paginateList[index]);
                          }),
                        ),
                      );
                    }),
                // ),
              ],
            );
          }).toList(),
        ),
        headerSliverBuilder: (context, innerBoxScrolled) => [
          MySliverAppBar(
              tabHeaders: tabHeaders, innerBoxIsScrolled: innerBoxScrolled),
        ],
      ),
    );
  }

  Widget _buildItem(int index, BuildContext context, Nutrition item) {
    return Column(
      children: [
        _buildFoodName(context, item),
        _buildFoodImage(context, item),
        PUserFeedRow(),
        Row(
          children: [
            _buildFoodInformation(context, item),
          ],
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  Widget _buildFoodInformation(BuildContext context, Nutrition item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ENERC_KCAL ${item.food?.nutrients?.ENERCKCAL}'),
          Text('PROCNT ${item.food?.nutrients?.PROCNT}'),
          Text('FAT ${item.food?.nutrients?.FAT}'),
          Text('CHOCDF ${item.food?.nutrients?.CHOCDF}'),
          Text('FIBTG ${item.food?.nutrients?.FIBTG}'),
        ],
      ),
    );
  }

  Widget _buildFoodName(BuildContext context, Nutrition item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Text(
          item.food?.label.nn,
          maxLines: 3,
        ),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  Widget _buildFoodImage(BuildContext context, Nutrition item) {
    return Row(
      children: [
        Expanded(
          child: FoodImage(item.food?.image.nn,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3),
        ),
      ],
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
                onTap: () => context.read<FoodBeanBloc>().add(
                      FoodPaginateLoadMore(),
                    ),
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
