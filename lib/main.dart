import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/core/helper/constant.dart';
import 'package:doctor_appointment/core/helper/shared_pref_helper.dart';
import 'package:doctor_appointment/doctor_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await chekUserIsLoggedIn();
  runApp(const DoctorApp());
}

bool isLoggedIn = false;
chekUserIsLoggedIn() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userToken!.isNotEmpty || userToken != null) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
