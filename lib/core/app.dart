import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/features/resources/route_manager.dart';
import 'package:login_app/features/user_managment/controllers/cubit/user_managment_cubit.dart';

import '../features/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserManagmentCubit(),
      child: MaterialApp(
        theme: AppTheme.themeData,
        onGenerateRoute: RoutesGenerator.getRpute,
        initialRoute: Routes.loginRoute,
      ),
    );
  }
}
