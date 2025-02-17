import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_demo/view/login/widgets/input_email_widget.dart';
import 'package:getx_demo/view/login/widgets/input_password_widget.dart';
import 'package:getx_demo/view/login/widgets/login_button_widget.dart';


import '../view_models/controller/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginViewModel controller=Get.put(LoginViewModel());
    var formkey=GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Login"),

      ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Form(
        key: formkey,
        child: Column(
          children: [
            InputEmailWidget(),
Gap(20),
            InputPasswordWidget(),
    Obx(() =>
        controller.response.value==""?Text("asdf"):Text(controller.response.value,style: TextStyle(color: Colors.blue),)
    )


    ],
        ),
      ),

      Gap(40),
      LoginButtonWidget(formKey: formkey),
      ElevatedButton(onPressed: (){
        controller.fetchUserDetails();
      }, child: Text("Fetch user details"))
    ],
  ),
),
    );
  }
}
