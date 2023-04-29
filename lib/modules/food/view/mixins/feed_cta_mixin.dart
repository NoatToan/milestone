import 'package:flutter/cupertino.dart';

mixin FeedCTAMixin {
  showFeedCTA(context) {
    Navigator.of(context).restorablePush(_modalBuilder);
  }

  static Route<void> _modalBuilder(BuildContext context, Object? arguments) {
    return CupertinoModalPopupRoute<void>(
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Title'),
          message: const Text('Message'),
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              child: const Text('Action One'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('Action Two'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
