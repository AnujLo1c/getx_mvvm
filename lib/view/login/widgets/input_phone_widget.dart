import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


import '../../../view_models/controller/login/login_view_model.dart';

class InputPhoneWidget extends StatelessWidget {
   InputPhoneWidget({super.key});
final controller=Get.find<LoginViewModel>();
  @override
  Widget build(BuildContext context) {
    return Container(
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
        controller: controller.phoneController.value,
        focusNode: controller.phoneFocusNode.value,
        style: TextStyle(),
        validator: (value) {
          if(value!.isEmpty){
            Fluttertoast.showToast(msg: "Enter Phone Number");
          }

        },
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Phone Number",
            labelStyle: TextStyle(color: Colors.grey.shade500),
            prefixIcon: Icon(Icons.mobile_screen_share,color: Colors.grey.shade400,)
        ),
      ),
    );

  }
}
