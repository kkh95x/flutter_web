import 'package:flutter/material.dart';
import 'package:login_app/features/resources/color_manager.dart';

import 'package:login_app/features/resources/values_manager.dart';

class CoustomButton extends StatelessWidget {
  const CoustomButton(
      {super.key,
      required this.colorButton,
      required this.colorText,
      required this.name,
      required this.onPressed});
  final Color colorButton;
  final Color colorText;
  final String name;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s40,
      width: AppSize.s111,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.white2),
          color: colorButton,
          borderRadius: BorderRadius.circular(AppSize.s5)),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: colorText, letterSpacing: -1.5),
        ),
      ),
    );
  }
}
