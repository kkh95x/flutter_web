import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_app/core/app.dart';
// Import the generated file
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const MyApp(),
  );
}
