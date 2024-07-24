import 'package:flutter/material.dart';
import 'package:gemini_integration/router/AppRouterConfig.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
 // await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '',
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
    );
  }
}
