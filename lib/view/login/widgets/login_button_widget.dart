import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controller/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formKey;
 LoginButtonWidget({super.key,required this.formKey});
final controller=Get.find<LoginViewModel>();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      if(formKey.currentState!.validate()){
controller.isLoading.value=true;
controller.loginUserApi();
      }
    },

        child: Obx(() =>  controller.isLoading.value?CircularProgressIndicator():Text("Login")));
  }
}
