import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/res/routes/route_names.dart';

import '../../../Theme/r.dart';

class IntroViewModel extends GetxController{
  RxInt svgIdx=0.obs;
  List<String> titles=["online payment","online shopping","home deliver service"];
  String s="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pharetra quam elementum massa, viverra. Ut turpis consectetur. ";
List<String> svgs=[R.assets.intro1,R.assets.intro2,R.assets.intro3];
RxBool isActive=false.obs;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    isActive.value=true;
  }

  void navToLogin() {
  Get.toNamed(RouteNames.loginView);
  }
  // showBottomSheet(){
  // if(isActive.value){
  //   Get.bottomSheet(
  //     Container(
  //       color: Colors.white,
  //       child: Column(
  //         children:[
  //           Text(titles[svgIdx.value]),
  //           Text(s),
  //         ],
  //       ),
  //     )
  //
  //   );
  // }
  // }
}