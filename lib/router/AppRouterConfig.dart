import 'package:flutter/material.dart';
import 'package:gemini_integration/Screen/AIInterface.dart';
import 'package:gemini_integration/Screen/SplashScreen.dart';
import 'package:gemini_integration/router/AppRouterConstant.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      name: AppRouteConstant.splashScreen,
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: SplashScreen());
      },
    ),
    GoRoute(
      name: AppRouteConstant.indexScreen,
      path: '/homeScreen',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomeScreen());
      },
    )
  ]);
}
