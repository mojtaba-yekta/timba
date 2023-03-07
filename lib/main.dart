import 'package:flutter/material.dart';
import 'package:timba/routing/app_router.dart';
import 'package:timba/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: appLightTheme(),
      darkTheme: appDarkTheme(),
    );
  }
}
