import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_type.g.dart';

class UserType extends EnumClass {
  static const UserType admin = _$admin;
  static const UserType user = _$user;
  static const UserType supervisor = _$supervisor;

  const UserType._(String name) : super(name);

  static BuiltSet<UserType> get values => _$values;

  static UserType valueOf(String name) => _$valueOf(name);

  static Serializer<UserType> get serializer => _$userTypeSerializer;
}
