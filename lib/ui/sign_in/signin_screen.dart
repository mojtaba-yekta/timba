import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:timba/routing/app_router.dart';
import 'package:timba/ui/sign_up/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Sign In"),
          FilledButton(
            onPressed: () {
              context.navigateTo(const SignUpRoute());
            },
            child: const Text("go to sign up"),
          )
        ],
      ),
    );
  }
}
