import 'package:flutter/cupertino.dart';
import 'package:i_declare/app.dart';
import 'package:i_declare/feature/splash/presentation/splash_controller/splash_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SplashController().onInit();
  runApp(const Ideclare());
}
