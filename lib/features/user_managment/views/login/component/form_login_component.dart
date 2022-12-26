// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/views/widgets/custom_button.dart';
import 'package:login_app/features/user_managment/views/widgets/custome_text_filde.dart';

class FormLoginComonent extends StatelessWidget {
  FormLoginComonent(
      {super.key,
      required this.onPressed,
      required this.width,
      required this.height,
      required this.alignment});
  final void Function(String?, String?) onPressed;
  String? email;
  String? password;
  double height;
  double width;
  AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppPading.p20),
      height: height,
      width: width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.signin,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            CustomeTextFild(
              width: AppSize.s340,
              label: AppString.email,
              onChanged: (p0) {
                email = p0;
              },
            ),
            CustomeTextFild(
              width: AppSize.s340,
              label: AppString.password,
              onChanged: (p0) {
                password = p0;
              },
            ),
            Align(
              alignment: alignment,
              child: CoustomButton(
                colorText: ColorManager.white,
                colorButton: ColorManager.textBlue,
                name: AppString.login,
                onPressed: () {
                  onPressed(email, password);
                },
              ),
            )
          ]),
    );
  }
}
