import 'package:flutter/material.dart';

class PSlideToAction extends StatefulWidget {
  const PSlideToAction({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<PSlideToAction> createState() => _PSlideToActionState();
}

class _PSlideToActionState extends State<PSlideToAction> {
  // late AnimateController
  bool isDidAction1 = false;
  bool isDidAction2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: 2,
            child: Row(
              children: [
                DragTarget(
                  builder: (context, candidateItems, rejectedItems) {
                    return Text(
                      'Like',
                      style: TextStyle(
                          color: isDidAction1 ? Colors.red : Colors.white),
                    );
                  },
                  onAccept: (item) {
                    isDidAction1 = !isDidAction1;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 25,
                ),
                DragTarget(
                  builder: (context, candidateItems, rejectedItems) {
                    return Text(
                      'Save',
                      style: TextStyle(
                          color: isDidAction2 ? Colors.red : Colors.white),
                    );
                  },
                  onAccept: (item) {
                    isDidAction2 = !isDidAction2;
                    setState(() {});
                  },
                ),
              ],
            )),
        Draggable(
          axis: Axis.horizontal,
          feedback: Icon(Icons.call_to_action),
          childWhenDragging: widget.child,
          child: widget.child,
          data: {},
        ),
      ],
    );
  }
}
