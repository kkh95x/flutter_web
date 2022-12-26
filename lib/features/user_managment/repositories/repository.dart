import 'package:login_app/features/user_managment/models/user_model.dart';

abstract class Repository {
  Future<bool> login(String username, String password);
  Future<bool> siginUp();
  Future<bool> createAcount(UserModel userModel);
}
