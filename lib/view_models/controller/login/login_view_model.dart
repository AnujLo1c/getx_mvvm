
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
// import 'package:getx_demo/data/repository/login_repository.dart';
import 'package:getx_demo/domain/models/user.dart';
import 'package:getx_demo/res/routes/route_names.dart';

import '../../../../utils/utils.dart';
import '../user_shared_pref/user_shared_pref.dart';

class LoginViewModel extends GetxController{

  final phoneController = TextEditingController().obs ;
  // final passwordController = TextEditingController().obs ;

  final phoneFocusNode = FocusNode().obs;
  // final passwordFocusNode = FocusNode().obs;
  RxBool isLoading=false.obs;
  RxBool obscurePassword=true.obs;



navToOtpView(){
  Get.toNamed(RouteNames.otpView);
}
navToSignUpView(){
  Get.toNamed(RouteNames.signUpView);
}



}