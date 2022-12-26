import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/features/resources/assest_manager.dart';
import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/route_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/controllers/cubit/user_managment_cubit.dart';
import 'package:login_app/features/user_managment/views/login/component/form_login_component.dart';
import 'package:login_app/features/user_managment/views/login/component/login_main_container_component.dart';
import 'package:login_app/features/user_managment/views/login/component/second_form_conponent.dart';
import 'package:login_app/features/user_managment/views/widgets/background.dart';

class LoginMobileView extends StatelessWidget {
  LoginMobileView({super.key});
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s1440,
      child: SingleChildScrollView(
        child: SizedBox(
          height: AppSize.s1000,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              BackgroundWidget(
                background: ImageAssets.loginTopBar,
                showlogo: true,
                hight: AppSize.s250,
                width: MediaQuery.of(context).size.width,
                logoHight: AppSize.s117,
                logoWidth: AppSize.s44,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: AppPading.p300,
                    right: AppPading.p12,
                    left: AppPading.p12),
                child: Container(
                  width: AppSize.s390,
                  height: AppSize.s685,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppSize.s5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(AppPading.p18),
                        child: FormLoginComonent(
                          onPressed: (email, password) async {
                            if (email != null && password != null) {
                              if (await context
                                  .read<UserManagmentCubit>()
                                  .login(email, password)) {
                              } else {
                                showAlertDialog(context);
                              }
                            } else {
                              showAlertDialog(context);
                            }
                          },
                          width: AppSize.s390,
                          height: AppSize.s270,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        color: ColorManager.grey,
                        height: AppSize.s210,
                        child: LoginRgisterComponent(
                          Rigistoralignment: Alignment.center,
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(Routes.registerRoute);
                          },
                          height: AppSize.s210,
                          width: AppSize.s350,
                        ),
                      )
                    ],
                  ),
                ),
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
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("My title"),
      content: const Text("Invald Password or email"),
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
