import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/features/user_managment/models/user_model.dart';
import 'package:login_app/features/user_managment/repositories/firebase_repository.dart';

part 'user_managment_state.dart';

class UserManagmentCubit extends Cubit {
  UserManagmentCubit() : super(UserManagmentInitial());

  Future<bool> login(String email, String password) async {
    return await FirebaseRebostory().login(email, password);
  }

  Future<void> creatUser(
      String email, String password, String username, String name) async {
    print("creatUser.......................");
    if (await FirebaseRebostory().createAcount(UserModel(
        fullName: name,
        userName: username,
        password: password,
        email: email))) {
    } else {
      emit(UserManagmentCreatingAcountfaild());
    }
  }
}
