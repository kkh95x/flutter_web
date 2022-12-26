import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/features/user_managment/controllers/cubit/user_managment_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("HOME"),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<UserManagmentCubit>(context);
              },
              child: Text("logout"))
        ],
      ),
    );
  }
}
