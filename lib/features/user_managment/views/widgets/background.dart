import 'package:flutter/material.dart';
import 'package:login_app/features/resources/assest_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.background,
    required this.showlogo,
    required this.width,
    required this.hight,
    required this.logoHight,
    required this.logoWidth,
  });
  final bool showlogo;
  final String background;
  final double width;
  final double hight;
  final double logoHight;
  final double logoWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPading.p12),
      child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: showlogo,
            child: SizedBox(
              child: Image.asset(
                ImageAssets.logo,
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          SizedBox(
            width: width,
            height: hight,
            child: Image.asset(
              background,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      )),
    );
  }
}
