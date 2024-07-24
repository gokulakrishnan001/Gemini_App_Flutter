import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gemini_integration/router/AppRouterConstant.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => GoRouter.of(context).pushNamed(AppRouteConstant.indexScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Image.network('https://i.gadgets360cdn.com/large/gemini_ai_google_1701928139717.jpg',
                         width: 100,
                         height: 100,
                         fit: BoxFit.cover,
      )),
    );
  }
}