import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:login_app/features/resources/assest_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';

class HederTextComponent extends StatelessWidget {
  const HederTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppString.createNewVault,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            width: AppSize.s120,
            child: Row(
              children: [
                SvgPicture.asset(ImageAssets.funValuet),
                const SizedBox(
                  width: AppSize.s8,
                ),
                Text(
                  AppString.fanVault,
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
