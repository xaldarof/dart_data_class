import 'package:json/json.dart';

import 'data_class_macros.dart';

@DataClass()
class User {
  final String name;
  final int age;
  final int number;

  const User({
    required this.name,
    required this.age,
    required this.number,
  });
}
