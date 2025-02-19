import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_demo/data/repository/login_repository.dart';
import 'package:getx_demo/domain/models/user.dart';
import 'package:getx_demo/res/routes/route_names.dart';
import 'package:getx_demo/view/view_models/controller/user_shared_pref/user_shared_pref.dart';

import '../../../../utils/utils.dart';

class LoginViewModel extends GetxController{

  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool isLoading=false.obs;
  RxBool obscurePassword=true.obs;



  LoginRepository api=LoginRepository();

  Future<void> loginUserApi() async {
    isLoading.value = true;
await api.apiStatus();
    Map<String, String> data = {
      'username': emailController.value.text,
      'password': passwordController.value.text
    };

    try {
      final res= await api.loginApi(data).then((value) {
       isLoading.value=false;
       if(value ==null){
         print("User not found");
         Utils.snackBar('Login', value['error']);
       }else {
UserModel userModel=UserModel(token: value['access_token'], isLogin: true);
         UserSharedPref().saveUser(userModel).then((value) {
           Get.delete<LoginViewModel>();
           Get.toNamed(RouteNames.homeView);
           Utils.snackBar('Login', 'Login successfully');
         },);
       }

      },);

    } catch (e) {
      print('Error getting token: $e');
    } finally {
      isLoading.value = false;
    }
  }


}