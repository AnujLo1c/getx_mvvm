import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpViewModel extends GetxController{
TextEditingController email= TextEditingController();
TextEditingController pass= TextEditingController();
TextEditingController confirmPass= TextEditingController();
TextEditingController phoneController= TextEditingController();
RxString countryCode="+244".obs;
}