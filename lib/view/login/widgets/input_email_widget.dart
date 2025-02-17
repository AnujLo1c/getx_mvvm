import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


import '../../view_models/controller/login_view_model.dart';

class InputEmailWidget extends StatelessWidget {
   InputEmailWidget({super.key});
final controller=Get.find<LoginViewModel>();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.emailController.value,
      focusNode: controller.emailFocusNode.value,
      validator: (value) {
        if(value!.isEmpty){
          Fluttertoast.showToast(msg: "Enter email");
        }

      },
      decoration: InputDecoration(
        hintText: "Email",
        
      ),
    );
  }
}
