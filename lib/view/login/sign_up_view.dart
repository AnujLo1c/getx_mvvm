import 'dart:typed_data';

// import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo/view/login/widgets/custom_button.dart';
import 'package:getx_demo/view_models/controller/login/sign_up_view_model.dart';

import '../../Theme/r.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel viewModel=Get.put(SignUpViewModel());
    return SafeArea(child:
    Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Gap(121),
            Text("Create Account",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18
            ),),
            Gap(10),
            Text("Sign Up"),
            Gap(44),
            Form(child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
// padding: EdgeInsets.symmetric(
//
//     horizontal: 20),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: TextFormField(
                    controller: viewModel.email,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.grey.shade500),
                        prefixIcon: Icon(Icons.email,color: Colors.grey.shade400,)
                    ),
                  ),

                ),
                Gap(20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
// padding: EdgeInsets.symmetric(
//
//     horizontal: 20),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: TextFormField(
                    controller: viewModel.pass,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Special Character",
                        labelStyle: TextStyle(color: Colors.grey.shade500),
                        prefixIcon: Icon(Icons.lock,color: Colors.grey.shade400,)
                        ,
                    ),
                    obscureText: true,
                  ),
                ),
                Gap(20),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
// padding: EdgeInsets.symmetric(
//
//     horizontal: 20),
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200)
                  ),
                  child: TextFormField(
                    controller: viewModel.confirmPass,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Repeat Password",
                        labelStyle: TextStyle(color: Colors.grey.shade500),
                        prefixIcon: Icon(Icons.lock,color: Colors.grey.shade400,),

                    ),
                    obscureText: true,
                  ),
                ),
        Gap(20),
        Row(
          children: [
            Gap(20),
        ClipRRect(
          child: Image.asset(R.assets.flag),
        ),
          Text(viewModel.countryCode.value),
          Icon(Icons.keyboard_arrow_down),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
// padding: EdgeInsets.symmetric(
//
//     horizontal: 20),
            height: 48,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200)
            ),
            width: Get.width-125,
            child: TextFormField(
        controller: viewModel.phoneController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Mobile Number",
                  labelStyle: TextStyle(color: Colors.grey.shade500),
                  // prefixIcon: Icon(Icons.email,color: Colors.grey.shade400,)
              ),
            ),
          ),
        
          ],
        ),
                Gap(68)
              ],
            )),
            CustomButton(),
            Gap(30),
            Text("Or Continue With",style: TextStyle(fontSize: 12),),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AuthBox(R.assets.apple,"Apple"),
                AuthBox(R.assets.google,"Google"),
                AuthBox(R.assets.facebook,"Facebook"),
              ],
            )
          ],
        ),
      ),
    ));
  }

  AuthBox(String path, String s) {
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(path),
          Text(s)
        ],
      ),
    );
  }
}
