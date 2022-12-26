import 'package:flutter/material.dart';

import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/views/widgets/custome_text_filde.dart';

class FormRegisterComponent extends StatelessWidget {
  const FormRegisterComponent(
      {super.key,
      required this.onChangedUserName,
      required this.onChangedFullname,
      required this.onChangedEmail,
      required this.onChangedPassword});
  final void Function(String) onChangedUserName;
  final void Function(String) onChangedPassword;

  final void Function(String) onChangedFullname;

  final void Function(String) onChangedEmail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s185,
      child: Row(
        children: [
          SizedBox(
            height: AppSize.s150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomeTextFild(
                    width: AppSize.s258,
                    label: AppString.fullName,
                    onChanged: onChangedFullname),
                CustomeTextFild(
                  width: AppSize.s258,
                  label: AppString.email,
                  onChanged: onChangedEmail,
                ),
              ],
            ),
          ),
          const VerticalDivider(
            color: ColorManager.white2,
          ),
          SizedBox(
            height: AppSize.s150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomeTextFild(
                  width: AppSize.s258,
                  label: AppString.username,
                  onChanged: onChangedUserName,
                ),
                CustomeTextFild(
                  width: AppSize.s258,
                  label: AppString.password,
                  onChanged: onChangedPassword,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
