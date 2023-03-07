import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:timba/routing/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Splash"),
          FilledButton(
            onPressed: () {
              context.replaceRoute(const SignInRoute());
            },
            child: const Text("go to sign in"),
          )
        ],
      ),
    );
  }
}
