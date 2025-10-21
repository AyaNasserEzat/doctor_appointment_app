import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/feature/login/prsentation/screens/login_screen.dart';
import 'package:doctor_appointment/feature/onBording/prsentation/screens/on_bording_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? generateRout(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBordingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return null;
    }
  }
}
