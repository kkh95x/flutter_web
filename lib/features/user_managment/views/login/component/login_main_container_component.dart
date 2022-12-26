import 'package:flutter/material.dart';

import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/route_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/views/login/component/form_login_component.dart';
import 'package:login_app/features/user_managment/views/login/component/second_form_conponent.dart';

class MainContainerLogainConponent extends StatelessWidget {
  MainContainerLogainConponent({super.key, required this.onPressedLogin});
  void Function(String?, String?) onPressedLogin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPading.p443),
      child: Container(
        height: AppSize.s419,
        width: AppSize.s820,
        padding: const EdgeInsets.symmetric(
            horizontal: AppPading.p20, vertical: AppSize.s20),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSize.s5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.welcomeToWorldFitnessCoaches,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Divider(
              color: ColorManager.white2,
            ),
            Row(
              children: [
                FormLoginComonent(
                  alignment: Alignment.bottomRight,
                  onPressed: onPressedLogin,
                  height: AppSize.s300,
                  width: AppSize.s340,
                ),
                const VerticalDivider(
                  color: ColorManager.white2,
                  thickness: AppSize.s0_5,
                ),
                LoginRgisterComponent(
                  Rigistoralignment: Alignment.bottomLeft,
                  height: AppSize.s300,
                  width: AppSize.s340,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.registerRoute);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
