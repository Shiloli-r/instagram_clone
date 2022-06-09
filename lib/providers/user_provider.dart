import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/models/user.dart';
import 'package:instagram_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user; // should strictly be private
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async { // will be called in Responsive layout since it has both web and mobile
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
