import 'package:get/get.dart';
import 'package:i_declare/feature/collection/presentation/screen/collection.dart';
import 'package:i_declare/feature/home/presentation/screens/home.dart';
import 'package:i_declare/feature/setting/presentation/screens/setting.dart';
import 'package:i_declare/feature/user/presentation/screens/user.dart';

class NavController extends GetxController {
  RxInt isTab = 0.obs;
  final List page = [
    const Home(),
    const Collection(),
    const User(),
    const Setting()
  ];
}
