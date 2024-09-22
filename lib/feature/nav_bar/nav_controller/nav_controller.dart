import 'package:get/get.dart';
import 'package:i_declare/feature/collection/presentation/collection.dart';
import 'package:i_declare/feature/home/presentation/home.dart';
import 'package:i_declare/feature/setting/presentation/setting.dart';
import 'package:i_declare/feature/user/presentation/user.dart';

class NavController extends GetxController {
  RxInt isTab = 0.obs;
  final List page = [
    const Home(),
    const Collection(),
    const User(),
    const Setting()
  ];
}
