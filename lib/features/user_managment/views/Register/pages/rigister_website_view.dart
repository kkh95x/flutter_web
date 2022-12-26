import 'package:flutter/material.dart';
import 'package:login_app/features/resources/assest_manager.dart';
import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/views/Register/component/chack_box_component.dart';
import 'package:login_app/features/user_managment/views/Register/component/form_register.dart';
import 'package:login_app/features/user_managment/views/Register/component/header_text_row_compnent.dart';
import 'package:login_app/features/user_managment/views/widgets/background.dart';
import 'package:login_app/features/user_managment/views/widgets/custom_button.dart';

class RigisterWebView extends StatelessWidget {
  RigisterWebView({super.key});
  final ValueNotifier<bool> isOld18 = ValueNotifier<bool>(true);
  final ValueNotifier<bool> isCretingAnAcountCheck = ValueNotifier<bool>(true);
  String? username, password, email, fullname;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s1440,
      child: SingleChildScrollView(
        child: SizedBox(
          width: AppSize.s1440,
          height: AppSize.s900,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              const BackgroundWidget(
                background: ImageAssets.rigisterTopBar,
                showlogo: false,
                hight: AppSize.s404,
                width: AppSize.s1440,
                logoHight: AppSize.s70,
                logoWidth: AppSize.s181,
              ),
              Padding(
                padding: const EdgeInsets.only(top: AppPading.p350),
                child: Container(
                  height: AppSize.s545,
                  width: AppSize.s595,
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppPading.p30, vertical: AppSize.s20),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppSize.s5),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HederTextComponent(),
                        const Divider(
                          color: ColorManager.white2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppPading.p12),
                          child: Text(
                            AppString.register,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                        FormRegisterComponent(
                          onChangedEmail: (u) {
                            email = u;
                          },
                          onChangedFullname: (f) {
                            fullname = f;
                          },
                          onChangedPassword: (p) {
                            password = p;
                          },
                          onChangedUserName: (u) {
                            username = u;
                          },
                        ),
                        ValueListenableBuilder(
                          valueListenable: isOld18,
                          builder: (context, value, child) {
                            return ChackBoxComponent(
                              isChecked: value,
                              title: AppString.iConfirmIam18ofageorOlder,
                              onTap: () {
                                isOld18.value = !isOld18.value;
                              },
                            );
                          },
                        ),
                        ValueListenableBuilder(
                          valueListenable: isCretingAnAcountCheck,
                          builder: (context, value, child) {
                            return ChackBoxComponent(
                              isChecked: value,
                              title: AppString.creatingAnAccountMean,
                              onTap: () {
                                isCretingAnAcountCheck.value =
                                    !isCretingAnAcountCheck.value;
                              },
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CoustomButton(
                            colorButton: ColorManager.textBlue,
                            colorText: ColorManager.white,
                            name: AppString.register,
                            onPressed: () {},
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: AppSize.s190,
                            child: Row(
                              children: [
                                Text(
                                  AppString.alreadyAMember,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(letterSpacing: -1.5),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      AppString.signin,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ))
                              ],
                            ),
                          ),
                        )
                      ]),
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
}
