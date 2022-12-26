import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/features/resources/assest_manager.dart';
import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/route_manager.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';
import 'package:login_app/features/user_managment/controllers/cubit/user_managment_cubit.dart';
import 'package:login_app/features/user_managment/views/Register/component/chack_box_component.dart';
import 'package:login_app/features/user_managment/views/Register/component/form_mobile_registor_component.dart';
import 'package:login_app/features/user_managment/views/Register/component/form_register.dart';
import 'package:login_app/features/user_managment/views/Register/component/header_text_row_compnent.dart';
import 'package:login_app/features/user_managment/views/login/component/form_login_component.dart';
import 'package:login_app/features/user_managment/views/login/component/login_main_container_component.dart';
import 'package:login_app/features/user_managment/views/login/component/second_form_conponent.dart';
import 'package:login_app/features/user_managment/views/widgets/alter_dialog.dart';
import 'package:login_app/features/user_managment/views/widgets/background.dart';
import 'package:login_app/features/user_managment/views/widgets/custom_button.dart';

class RigisterMobileView extends StatelessWidget {
  RigisterMobileView({super.key});
  final ValueNotifier<bool> isOld18 = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isCretingAnAcountCheck = ValueNotifier<bool>(false);
  String? username, password, email, fullname;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s1440,
      child: SingleChildScrollView(
        child: SizedBox(
          height: AppSize.s1000,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              BackgroundWidget(
                background: ImageAssets.rigisterTopBar,
                showlogo: true,
                hight: AppSize.s250,
                width: MediaQuery.of(context).size.width,
                logoHight: AppSize.s117,
                logoWidth: AppSize.s44,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: AppPading.p300,
                    right: AppPading.p12,
                    left: AppPading.p12),
                child: Container(
                  width: AppSize.s390,
                  height: AppSize.s685,
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPading.p20),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppSize.s5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HederTextComponent(),
                      const Divider(
                        color: ColorManager.white2,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: AppPading.p12),
                        child: Text(AppString.register,
                            style: Theme.of(context).textTheme.labelMedium),
                      ),
                      FormRegisterMobileComponent(
                        onChangedEmail: (e) {
                          email = e;
                        },
                        onChangedFullname: (p0) {
                          fullname = p0;
                        },
                        onChangedPassword: (p0) {
                          password = p0;
                        },
                        onChangedUserName: (p0) {
                          username = p0;
                        },
                      ),
                      ValueListenableBuilder(
                        valueListenable: isOld18,
                        builder: (context, value, child) {
                          return ChackBoxComponent(
                            isChecked: !value,
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
                            isChecked: !value,
                            title: AppString.creatingAnAccountMeanMobile,
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
                          onPressed: () {
                            if (fullname != null &&
                                password != null &&
                                email != null &&
                                username != null) {
                              BlocProvider.of<UserManagmentCubit>(context)
                                  .creatUser(
                                      email!, password!, username!, fullname!);
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return const SingleChildScrollView(
                                    child: MyAlterDialgo(
                                        hight: AppSize.s545,
                                        pathImage: ImageAssets.orderConfirmed,
                                        width: AppSize.s562),
                                  );
                                },
                              );
                            } else {
                              showAlertDialog(context);
                            }
                          },
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
                    ],
                  ),
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

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("test"),
      content: const Text("Empty Data"),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
