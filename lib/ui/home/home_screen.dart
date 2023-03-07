import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routing/app_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("home"),
          FilledButton(
            onPressed: () {
              context.navigateTo(const SignInRoute());
            },
            child: const Text("go to sign in"),
          )
        ],
      ),
    );
  }
}
