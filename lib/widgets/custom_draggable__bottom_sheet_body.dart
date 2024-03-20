import 'package:flutter/material.dart';
import 'package:nxt_assessment/utils/app_router/app_router.dart';

class CustomDraggableBottomSheetBody extends StatelessWidget {
  final Widget child;
  const CustomDraggableBottomSheetBody(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(AppRouter.appKey.currentContext!).size.height -
          MediaQuery.of(AppRouter.appKey.currentContext!).padding.top -
          45,
      child: DraggableScrollableSheet(
          initialChildSize: 1,
          maxChildSize: 1,
          minChildSize: .75,
          snap: true,
          builder: (_, __) {
            return Column(
              children: [
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD0C7C7).withOpacity(.8),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Container(
                    width: 56,
                    height: 6,
                    decoration: BoxDecoration(
                      color: const Color(0xFF171717).withOpacity(.63),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(child: child),
              ],
            );
          }),
    );
  }
}
