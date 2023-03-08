import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:timba/model/value_model/user.dart';
import 'package:timba/model/value_model/user_type.dart';
import 'dart:developer' as developer;

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
              var user = User((x) => x
                ..avatar = ""
                ..email = ""
                ..fullName = ""
                ..id = 0
                ..password = ""
                ..tokens.addAll(['test1', 'test2'])
                ..userType = UserType.admin);

              var copiedUser =
                  user.rebuild((x) => x..userType = UserType.supervisor);

              developer.log("$user");
              developer.log("$copiedUser");

              var jsonUser = user.toJson();
              developer.log(jsonUser);

              var newUserFromJson = User.fromJson(jsonUser);
              developer.log("$newUserFromJson");

              //context.navigateTo(const SignInRoute());
            },
            child: const Text("go to sign in"),
          )
        ],
      ),
    );
  }
}
