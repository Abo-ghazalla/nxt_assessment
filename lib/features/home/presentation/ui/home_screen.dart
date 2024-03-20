import 'package:flutter/material.dart';
import 'package:nxt_assessment/features/home/presentation/ui/widgets/home_buttons.dart';
import 'package:nxt_assessment/features/home/presentation/ui/widgets/toggle_theme_widget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 42),
            ToggleThemeWidget(),
            Spacer(),
            HomeButtons(),
            SizedBox(height: 74),
          ],
        ),
      ),
    );
  }
}
