// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dart_data_class/data_class_macros.dart';
import 'package:flutter_test/flutter_test.dart';

@DataClass()
class User {
  final int age;
  final String name;

  const User({
    required this.age,
    required this.name,
  });
}

void main() {
  const user = User(age: 15, name: "User");
  final newUser = user.copyWith(age: 16);

  test('test data class methods', () {
    equals(user.age == 16);
  });
}
