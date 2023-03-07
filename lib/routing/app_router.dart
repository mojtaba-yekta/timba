import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:timba/ui/sign_up/sign_up_screen.dart';

import '../ui/home/home_screen.dart';
import '../ui/sign_in/signin_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: [
  AutoRoute(page: HomeScreen, initial: true),
  AutoRoute(page: SignInScreen),
  AutoRoute(page: SignUpScreen),
])
class AppRouter extends _$AppRouter {}

//flutter packages pub run build_runner watch
//flutter packages pub run build_runner build
