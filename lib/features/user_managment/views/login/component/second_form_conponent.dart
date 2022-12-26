import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/views/widgets/custom_button.dart';

class LoginRgisterComponent extends StatelessWidget {
  const LoginRgisterComponent(
      {super.key,
      required this.onPressed,
      required this.height,
      required this.width,
      required this.Rigistoralignment});
  final void Function() onPressed;
  final double width;
  final double height;
  final AlignmentGeometry Rigistoralignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: AppPading.p20, horizontal: AppPading.p20),
      height: height,
      width: width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.notMemberYet,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              AppString.registerAndGetAccessTo,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            getRowCheck(context, AppString.kPICopyNumber1),
            getRowCheck(context, AppString.kPICopyNumber2),
            getRowCheck(context, AppString.kPICopyNumber3),
            Align(
              alignment: Rigistoralignment,
              child: CoustomButton(
                colorButton: ColorManager.white,
                colorText: ColorManager.textBlack,
                name: AppString.register,
                onPressed: onPressed,
              ),
            )
          ]),
    );
  }

  Row getRowCheck(BuildContext context, String name) => Row(
        children: [
          const Icon(
            Icons.check,
            color: ColorManager.green,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      );
}
