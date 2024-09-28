import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:i_declare/core/apps_icon.dart';
import 'package:i_declare/feature/nav_bar/controller/nav_controller.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavController());

    return Scaffold(
        body: Obx(
          () => navController.page[navController.isTab.value],
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(70),
                colors: [
                  Color(0xff645AFF),
                  Color(0xffA573FF),
                  Color(0xff9C70FF)
                ]), // Background color
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: Obx(
            () => BottomNavigationBar(
              currentIndex: 0,
              onTap: (value) {
                navController.isTab.value = value;
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.white, // Color of selected icon
              unselectedItemColor: Colors.white70, // Color of unselected icons
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: navController.isTab.value == 0
                      ? SvgPicture.asset(
                          AppIcon.selectedHome,
                          height: 28.h,
                          width: 28.w,
                        )
                      : SvgPicture.asset(AppIcon.home,
                          height: 28.h, width: 28.w),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: navController.isTab.value == 1
                      ? SvgPicture.asset(AppIcon.selectedCollection,
                          height: 28.h, width: 28.w)
                      : SvgPicture.asset(AppIcon.collection,
                          height: 28.h, width: 28.w),
                  label: 'Collection',
                ),
                BottomNavigationBarItem(
                  icon: navController.isTab.value == 2
                      ? SvgPicture.asset(AppIcon.selectedUser,
                          height: 28.h, width: 28.w)
                      : SvgPicture.asset(AppIcon.user,
                          height: 28.h, width: 28.w),
                  label: 'User',
                ),
                BottomNavigationBarItem(
                  icon: navController.isTab.value == 3
                      ? SvgPicture.asset(AppIcon.selectedSetting,
                          height: 28.h, width: 28.w)
                      : SvgPicture.asset(AppIcon.setting,
                          height: 28.h, width: 28.w),
                  label: 'Setting',
                ),
              ],
            ),
          ),
        ));
  }
}
