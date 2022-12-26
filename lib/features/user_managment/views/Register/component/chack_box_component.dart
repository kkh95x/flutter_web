import 'package:flutter/material.dart';
import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';

class ChackBoxComponent extends StatelessWidget {
  ChackBoxComponent(
      {super.key,
      required this.title,
      required this.isChecked,
      required this.onTap});
  String title;
  bool isChecked;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPading.p12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: isChecked ? getNotCheckedContainer() : getCheckedContainer(),
          ),
          const SizedBox(
            width: AppSize.s10,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }

  Container getNotCheckedContainer() {
    return Container(
      width: AppSize.s16,
      height: AppSize.s16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s4),
          border: Border.all(color: ColorManager.white2)),
    );
  }

  Container getCheckedContainer() {
    return Container(
      width: AppSize.s16,
      height: AppSize.s16,
      decoration: BoxDecoration(
        color: ColorManager.green,
        borderRadius: BorderRadius.circular(AppSize.s4),
      ),
      child: const Icon(
        size: AppSize.s12,
        Icons.check,
        color: ColorManager.white,
      ),
    );
  }
}
