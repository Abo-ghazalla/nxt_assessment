import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nxt_assessment/utils/app_router/app_router.dart';
import 'package:nxt_assessment/widgets/custom_draggable__bottom_sheet_body.dart';

abstract class PopUpsHelper {
  static Future<void> showAppToast(String msg, {bool short = false}) async {
    await Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: short ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
    );
  }

  static Future<T?> showDraggableAppModelSheet<T>({
    required Widget child,
    bool isDismissible = true,
  }) async {
    return await showModalBottomSheet(
      context: AppRouter.appKey.currentContext!,
      isDismissible: isDismissible,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      enableDrag: true,
      backgroundColor: Theme.of(AppRouter.appKey.currentContext!).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (_) => CustomDraggableBottomSheetBody(child),
    );
  }
}
