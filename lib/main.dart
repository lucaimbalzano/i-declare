import 'package:flutter/material.dart';
import 'package:i_declare/app.dart';
import 'package:i_declare/feature/splash/controller/splash_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SplashController().onInit();
  runApp(const Ideclare());
}
// this is a flutter project
