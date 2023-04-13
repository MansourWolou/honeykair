// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter_test/flutter_test.dart';

import 'package:honey/api.dart';

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
    String res = await api.register("bg", "email@green.com", "p9wd");
    expect(res.runtimeType, String);
  });
}
        //    var findUser = repository.findByEmail(req.getEmail());
        // if(findUser.isPresent()){
        //         return AuthenticationResponse.builder().token("user Already exist ").build();
        // }