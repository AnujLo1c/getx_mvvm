import 'package:flutter/material.dart';
import 'package:getx_demo/view/login/widgets/custom_button.dart';
import 'package:getx_demo/view/login/widgets/otp_input_widget.dart';
class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            child: Icon(Icons.arrow_back_ios),
          ),
          Text("OTP Verification"),
          Text("Enter the verification code we just sent on your email address."),
OtpInputWidget(),
        CustomButton(),
        ],
      ),
    ));
  }
}
