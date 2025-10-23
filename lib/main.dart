import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/doctor_app.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(const DoctorApp());
}
