import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/features/resources/assest_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/controllers/cubit/user_managment_cubit.dart';
import 'package:login_app/features/user_managment/views/login/component/login_main_container_component.dart';
import 'package:login_app/features/user_managment/views/widgets/background.dart';

class LoginWebView extends StatelessWidget {
  const LoginWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s1440,
      child: SingleChildScrollView(
        child: SizedBox(
          width: AppSize.s1440,
          height: AppSize.s888,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              const BackgroundWidget(
                background: ImageAssets.loginTopBar,
                showlogo: true,
                hight: AppSize.s404,
                width: AppSize.s1440,
                logoHight: AppSize.s70,
                logoWidth: AppSize.s181,
              ),
              MainContainerLogainConponent(
                onPressedLogin: (email, password) {
                  if (password != null && email != null) {
                    context.read<UserManagmentCubit>().login(email, password);
                  } else {
                    showAlertDialog(context);
                  }
                },
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    AppString.footer,
                    style: Theme.of(context).textTheme.labelSmall,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("Invald Password or email"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
