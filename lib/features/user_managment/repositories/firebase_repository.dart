import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:login_app/features/user_managment/models/user_model.dart';
import 'package:login_app/features/user_managment/repositories/repository.dart';

class FirebaseRebostory extends Repository {
  @override
  Future<bool> createAcount(UserModel userModel) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userModel.fullName, password: userModel.password!);
    await FirebaseFirestore.instance.collection('users').add(userModel.toMap());

    return true;
  }

  @override
  Future<bool> login(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }

  @override
  Future<bool> siginUp() {
    // TODO: implement siginUp
    throw UnimplementedError();
  }
}
