import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({super.key});
  final controller=Get.find<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
       TextFormField(
        controller: controller.passwordController.value,
        focusNode: controller.passwordFocusNode.value,
        validator: (value) {
          if(value!.isEmpty){
            Fluttertoast.showToast(msg: "Enter password");
          }

        },
        obscureText: controller.obscurePassword.value,
        decoration: InputDecoration(
          hintText: "Password",
          suffixIcon: IconButton(onPressed: (){
            controller.obscurePassword.value=!controller.obscurePassword.value;
          }, icon: Icon(controller.obscurePassword.value==true?Icons.remove_red_eye:Icons.panorama_fish_eye_outlined,color: Colors.black,))

        ),
      ),
    );
  }
}
