import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Theme/r.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formKey;
 LoginButtonWidget({super.key,required this.formKey});
final controller=Get.find<LoginViewModel>();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
     controller.navToOtpView();
    },
        style: ElevatedButton.styleFrom(minimumSize: Size(315, 60),
        backgroundColor: R.colors.primary),
        child: Text("GET OTP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),));
  }
}
