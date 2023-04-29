import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milestone_project/app_inherited_widget.dart';
import 'package:milestone_project/core/routes/app_route.dart';
import 'package:rive/rive.dart' hide LinearGradient;

class PBottomNav extends StatefulWidget {
  const PBottomNav({Key? key, required this.onTabChange}) : super(key: key);

  final Function(int tabIndex) onTabChange;

  @override
  State<PBottomNav> createState() => _PBottomNavState();
}

class _PBottomNavState extends State<PBottomNav> {
  SMIBool? status;
  int _selectedTab = 0;
  final List<TabItem> _icons = TabItem.tabItemsList;

  void _onRiveIconInit(Artboard artBoard, index) {
    final controller = StateMachineController.fromArtboard(
        artBoard, _icons[index].stateMachine);

    artBoard.addController(controller!);
    _icons[index].status = controller.findInput<bool>("active") as SMIBool;
  }

  void onTabPress(index) {
    if (_selectedTab == index) {
      return;
    }
    _icons[index].status!.change(true);
    Future.delayed(const Duration(milliseconds: 500), () {
      _icons[index].status!.change(false);
    });

    _selectedTab = index;
    setState(() {});

    widget.onTabChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 13, bottom: 6, left: 13),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            blurRadius: 20,
            offset: const Offset(0, 20),
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xffF9373F),
            Color(0xffC91339),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(_icons.length, (index) {
            TabItem icon = _icons[index];
            bool isActive = _selectedTab == index;

            return Stack(children: [
              Positioned(
                right: 15,
                bottom: 0,
                child: AnimatedContainer(
                  curve: Curves.linearToEaseOut,
                  duration: const Duration(milliseconds: 200),
                  height: 4,
                  width: isActive ? 25 : 0,
                  decoration: BoxDecoration(
                      color:
                          AppInheritedWidget.of(context).themeData.dividerColor,
                      borderRadius: BorderRadius.circular(2)),
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 10),
                onPressed: () => onTabPress(index),
                child: AnimatedOpacity(
                  opacity: isActive ? 1 : 0.6,
                  duration: const Duration(milliseconds: 200),
                  child: SizedBox(
                    height: 36,
                    width: 36,
                    child: RiveAnimation.asset(
                      'assets/riv/icons.riv',
                      stateMachines: [icon.stateMachine],
                      artboard: icon.artBoard,
                      onInit: (artBoard) => _onRiveIconInit(artBoard, index),
                    ),
                  ),
                ),
              ),
            ]);
          }),
        ),
      ),
    );
  }
}

class TabItem {
  TabItem({
    this.id,
    required this.stateMachine,
    required this.artBoard,
    required this.routeName,
    this.status,
  });

  UniqueKey? id = UniqueKey();
  String stateMachine;
  String artBoard;
  String routeName;
  late SMIBool? status;

  static List<TabItem> tabItemsList = [
    // TabItem(stateMachine: "HOME_Interactivity", artBoard: "HOME"),
    TabItem(
      stateMachine: "BELL_Interactivity",
      artBoard: "BELL",
      routeName: AppRouteNames.INDEX,
    ),
    TabItem(
      stateMachine: "SEARCH_Interactivity",
      artBoard: "SEARCH",
      routeName: AppRouteNames.FOOD,
    ),
    TabItem(
      stateMachine: "USER_Interactivity",
      artBoard: "USER",
      routeName: AppRouteNames.PROFILE,
    ),
    TabItem(
      stateMachine: "SETTINGS_Interactivity",
      artBoard: "SETTINGS",
      routeName: AppRouteNames.SETTING,
    ),
  ];
}
