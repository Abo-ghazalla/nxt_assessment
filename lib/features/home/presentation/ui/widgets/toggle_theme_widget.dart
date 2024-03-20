import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nxt_assessment/core/blocs/theme_cubit/theme_cubit.dart';
import 'package:nxt_assessment/utils/constants/app_images.dart';
import 'package:nxt_assessment/utils/constants/app_strings.dart';
import 'package:nxt_assessment/utils/extensions/theme_extension.dart';

class ToggleThemeWidget extends StatefulWidget {
  const ToggleThemeWidget({super.key});

  @override
  State<ToggleThemeWidget> createState() => _ToggleThemeWidgetState();
}

class _ToggleThemeWidgetState extends State<ToggleThemeWidget> {
  late ThemeCubit _themeCubit;

  @override
  void initState() {
    _themeCubit = context.read<ThemeCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.themeSvg,
            colorFilter: ColorFilter.mode(
              context.themeColors().blackInLightWhiteInDark,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            AppStrings.theme,
            style: context.themeTextStyles().titleLarge,
          ),
          const Spacer(),
          GestureDetector(
            onTap: _themeCubit.toggleTheme,
            child: SvgPicture.asset(
              _themeCubit.state.when(
                dark: () => AppImages.lightThemeSvg,
                light: () => AppImages.darkThemeSvg,
              ),
            ),
          )
        ],
      ),
    );
  }
}
