import 'package:flutter/material.dart';

import 'package:login_app/features/user_managment/views/Register/pages/register_mobile_view.dart';
import 'package:login_app/features/user_managment/views/Register/pages/rigister_website_view.dart';

class RigisterPage extends StatelessWidget {
  RigisterPage({super.key});
  final ValueNotifier<bool> isOld18 = ValueNotifier<bool>(true);
  final ValueNotifier<bool> isCretingAnAcountCheck = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Add width condition of Web
        if (constraints.maxWidth > 600) {
          return RigisterWebView();
        } else {
          return RigisterMobileView();
        }
      },
    ));
  }
}
