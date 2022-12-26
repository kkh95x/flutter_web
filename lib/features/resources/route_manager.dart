import 'package:flutter/material.dart';
import 'package:login_app/features/resources/string_manager.dart';
import 'package:login_app/features/user_managment/views/Register/reigiter_view.dart';
import 'package:login_app/features/user_managment/views/login/login_view.dart';

class Routes {
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
}

class RoutesGenerator {
  static Route<dynamic> getRpute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginRoute:
        //loginIntModel();
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.registerRoute:
        //registerInitModel();
        return MaterialPageRoute(builder: (_) => RigisterPage());

      default:
        return unDefindRoute();
    }
  }

  static Route<dynamic> unDefindRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppString.noRouteFound),
                centerTitle: true,
              ),
              body: const Center(
                child: Text(AppString.noRouteFound),
              ),
            ));
  }
}
