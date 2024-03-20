import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nxt_assessment/utils/constants/app_images.dart';
import 'package:nxt_assessment/widgets/custom_loading_indicator.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit? boxFit;
  final bool usePlaceHolder;
  final double? width;
  final double? height;
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.boxFit,
    this.usePlaceHolder = true,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: imageUrl,
      fit: boxFit,
      errorWidget: (context, url, error) => Image.asset(
        AppImages.placeholder,
        fit: boxFit,
      ),
      placeholder: (_, __) => usePlaceHolder ? const CustomLoadingIndicator() : const SizedBox(),
    );
  }
}
