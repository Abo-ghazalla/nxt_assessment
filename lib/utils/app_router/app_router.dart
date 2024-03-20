import 'package:flutter/material.dart';
import 'package:nxt_assessment/features/home/presentation/ui/home_screen.dart';
import 'package:nxt_assessment/utils/app_router/routes_name.dart';

class AppRouter {
  static final appKey = GlobalKey<NavigatorState>();
  static final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

    

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text("no Views for that root")),
          );
        });
    }
  }

}
