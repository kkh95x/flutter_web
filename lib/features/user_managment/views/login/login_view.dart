import 'package:flutter/material.dart';
import 'package:login_app/features/user_managment/views/login/pages/login_view_moblie.dart';
import 'package:login_app/features/user_managment/views/login/pages/login_view_website.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Add width condition of Web
        if (constraints.maxWidth > 600) {
          return const LoginWebView();
        } else {
          return LoginMobileView();
        }
      },
    ));
  }
}
