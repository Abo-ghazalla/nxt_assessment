import 'package:flutter/material.dart';
import 'package:nxt_assessment/core/blocs/theme_cubit/theme_cubit.dart';
import 'package:nxt_assessment/di/dependency_init.dart';
import 'package:nxt_assessment/utils/app_router/app_router.dart';
import 'package:nxt_assessment/utils/theme/dark_theme_data.dart';
import 'package:nxt_assessment/utils/theme/light_them_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('box');

  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: getLightThemeData(),
            darkTheme: getDarkThemeData(),
            themeMode: state.when(
              dark: () => ThemeMode.dark,
              light: () => ThemeMode.light,
            ),
            title: 'NXT Assessment',
            debugShowCheckedModeBanner: false,
            navigatorKey: AppRouter.appKey,
            scaffoldMessengerKey: AppRouter.scaffoldKey,
            onGenerateRoute: AppRouter.generateRoute,
          );
        },
      ),
    );
  }
}
