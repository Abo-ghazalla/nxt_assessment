import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';
import 'package:nxt_assessment/widgets/custom_cached_image.dart';

class GalleryWidget extends StatelessWidget {
  final List<String> images;
  const GalleryWidget(this.images, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${AppStrings.gallery}:",
          style: context.themeTextStyles().titleLarge,
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 225,
          child: LayoutBuilder(builder: (_, cons) {
            return ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(width: 6),
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (_, i) => CustomCachedNetworkImage(
                imageUrl: images[i],
                boxFit: BoxFit.cover,
                width: cons.maxWidth / 2 - 20,
              ),
            );
          }),
        )
      ],
    );
  }
}
