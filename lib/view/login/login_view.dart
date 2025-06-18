import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_demo/res/routes/route_names.dart';
import 'package:getx_demo/view/login/widgets/input_phone_widget.dart';
import 'package:getx_demo/view/login/widgets/input_password_widget.dart';
import 'package:getx_demo/view/login/widgets/login_button_widget.dart';


import '../../Theme/r.dart';
import '../../view_models/controller/login/login_view_model.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginViewModel controller=Get.put(LoginViewModel());
    var formkey=GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(20),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: () {
              Get.toNamed(RouteNames.homeView);
            }, icon: ImageIcon(AssetImage("assets/png/Close.png")),iconSize: 16,),
          ),
          Image(image: AssetImage(R.assets.logo)),
          Gap(44),
          Text("Welcome Back!",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
          Gap(10),
          Text("Login to continue",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
          Gap(37),
          Form(
            key: formkey,
            child: Column(
              children: [
                InputPhoneWidget(),
        // Gap(20),
                // InputPasswordWidget(),
      
        ],
            ),
          ),
        
          Gap(40),
          LoginButtonWidget(formKey: formkey),
        Gap(92),
        Text("Or Continue With",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
          Gap(44),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
AuthBox(R.assets.google,"Google"),
Gap(15),
AuthBox(R.assets.facebook,"Facebook"),
            ],
          ),
          Gap(65),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ Text("Don’t have an account?"),
          TextButton(onPressed: (){
            controller.navToSignUpView();
          }, child: Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: R.colors.primary),))])
        ],
      ),
        ),
      ),
      ),
    );
  }

  AuthBox(String auth, String title) {
    return Container(
      height: 57,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          color: Colors.grey,blurRadius: 3
        )]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(auth),
          Text(title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
