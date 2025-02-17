import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_demo/data/repository/login_repository.dart';
import 'package:http/http.dart' as dio;
import 'package:dio/dio.dart' as dio_lib;

class LoginViewModel extends GetxController{

  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool isLoading=false.obs;
  RxBool obscurePassword=true.obs;
  RxString response = "".obs;


LoginRepository api=LoginRepository();

  Future<void> loginUserApi() async {
    isLoading.value = true;
await api.apiStatus();
    Map<String, String> data = {
      'username': emailController.value.text,
      'password': passwordController.value.text
    };

    try {
      final res= await api.loginApi(data);
      response.value = res['access_token'];

      print('Token Response: ${response.value}');
    } catch (e) {
      print('Error getting token: $e');
    } finally {
      isLoading.value = false;
    }
  }
Future<void> fetchUserDetails()async {
  try {
   dynamic res=await api.fetchUserDetails(response.value);
    print('User details : ${res}');
  } catch (e) {
    print('Error getting token: $e');
  }
}

}