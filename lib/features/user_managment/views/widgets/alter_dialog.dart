import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/views/widgets/custom_button.dart';

class MyAlterDialgo extends StatelessWidget {
  const MyAlterDialgo(
      {super.key,
      required this.hight,
      required this.pathImage,
      required this.width});
  final String pathImage;
  final double width;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
          color: ColorManager.grey,
          borderRadius: BorderRadius.circular(AppSize.s5)),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPading.p41, vertical: AppPading.p20),
              child: Image.asset(
                pathImage,
                fit: BoxFit.fill,
              )),
          Text(
            AppString.pleaseCheckYourEmail,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(fontSize: AppSize.s22),
          ),
          Text(
            AppString.inOrderEmail,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(fontSize: AppSize.s22),
          ),
          CoustomButton(
            colorButton: ColorManager.textBlue,
            colorText: ColorManager.white,
            name: AppString.illCheckMyEmail,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
