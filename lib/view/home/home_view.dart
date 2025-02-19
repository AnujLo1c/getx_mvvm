import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo/view/home/widgets/logout_dialog.dart';

import '../view_models/controller/home/home_view_model.dart';
import '../view_models/controller/login/login_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel controller = Get.put(HomeViewModel());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                controller.fetchUserDetails();
              },
              child: Text("Fetch user details")),
          ElevatedButton(
              onPressed: () {
                Get.dialog(LogoutDialog(
                  title: 'Logout',
                  desc: 'Are you sure you want to log out?',
                  onConfirm: () => controller.logoutUser(),
                ));
              },
              child: Text("Logout"))
        ],
      ),
    );
  }
}
