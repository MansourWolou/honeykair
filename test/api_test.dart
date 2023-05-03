// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:test/test.dart';
// import 'package:flutter_test/flutter_test.dart';
import 'dart:math';

import 'package:honey/api.dart';

String generateRandomString(int len) {
  var r = Random();
  return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89));
}

void main() {
  var api = Api();

  test('Test de la chaîne de caractères', () {
    expect('Hello, World!', equals('Hello, World!'));
  });
  test("request to api are working ", () async {
    String res = await api.request();
    expect(res, "hello world");
  });

  test("user already exist", () async {
    String res = await api.register("username", "email", "pwd");
    expect(res, "user Already exist ");
  });
  test("should get auth token for registration", () async {
    String strUsername =
        generateRandomString(10); // generates a random string of length 10
    String strEmail = generateRandomString(8);
    String strPwd = generateRandomString(15);
    String res = await api.register(strUsername, strEmail, strPwd);
    expect(res.runtimeType, String);
    expect(res, isNot(" "));
  });
  test("should log a user that already exist", () async {
    String res = await api.login("email","pwd");
    expect(res.runtimeType, String);
    expect(res, isNot(" "));
  });
}
