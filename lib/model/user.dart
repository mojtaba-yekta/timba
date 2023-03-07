import 'package:built_value/built_value.dart';

import 'user.g.dart';

abstract class User {
  int get id;

  String get fullName;

  String get email;

  String get password;

  @nullable
  String get avatar;

}
