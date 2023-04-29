import 'package:flutter/material.dart';
import 'package:milestone_project/gen/assets.gen.dart';

class PBookMark extends StatefulWidget {
  const PBookMark({Key? key}) : super(key: key);

  @override
  State<PBookMark> createState() => _PBookMarkState();
}

class _PBookMarkState extends State<PBookMark> {
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isSaved = !_isSaved;
        setState(() {});
      },
      child: Assets.images.icBookmark.svg(
        colorFilter: ColorFilter.mode(
          _isSaved ? Colors.amber : Colors.black,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
