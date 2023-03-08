import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'serializers.dart';
import 'user_type.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {


  int get id;

  UserType get userType;

  String get fullName;

  String get email;

  String get password;

  String? get avatar;

  BuiltList<String>? get tokens;

  User._();

  factory User([Function(UserBuilder u) updates]) = _$User;

  static Serializer<User> get serializer => _$userSerializer;

  String toJson() =>
      json.encode(serializers.serializeWith(User.serializer, this));

  static User? fromJson(String jsonString) =>
      serializers.deserializeWith(User.serializer, json.decode(jsonString));
}
