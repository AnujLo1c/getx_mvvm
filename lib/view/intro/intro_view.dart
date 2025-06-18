import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_demo/res/routes/route_names.dart';
import 'package:getx_demo/res/routes/routes.dart';
import 'package:getx_demo/view_models/controller/intro/intro_view_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Theme/r.dart';
class IntroView extends StatelessWidget {
  const IntroView({super.key});
  @override
  Widget build(BuildContext context) {
IntroViewModel viewModel=Get.put(IntroViewModel());
    return  SafeArea(

        child: Scaffold(
          backgroundColor: R.colors.primary,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(165),
          Obx(
            () {
              return SizedBox(
                width: Get.width,
                height: 256,
                child: SvgPicture.asset(
                   viewModel.svgs[viewModel.svgIdx.value]
                          ),
              );
            },
          ),
Spacer(),
BottomContainer(viewModel),
            ],
          ),
        )

    );
  }

  BottomContainer(IntroViewModel viewModel) {
    return Container(
      padding: EdgeInsets.all(20),
      // color: Colors.white,
      height: 330,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ,
      color: Colors.white),
      child: Column(
        children: [
          Gap(37),
          Obx(
            () =>  Text(
              style: TextStyle(

                  fontWeight: FontWeight.w700,
                  fontSize:20,
                color: R.colors.secondary
                ),

            viewModel.titles[viewModel.svgIdx.value].toUpperCase()),

          ),
          Gap(35),
          Text(viewModel.s,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12, ),textAlign: TextAlign.center,),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
Gap(Get.width/3),
              TextButton(child: Text("Skip>>\n", style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: R.colors.secondary
              ),), onPressed: () {
                // Get.toNamed(RouteNames.loginView);
                viewModel.navToLogin();
                },),
Spacer(),
              InkWell(
                child: Image.asset(R.assets.nextArrow),
                onTap: () {
                  int temp=viewModel.svgIdx.value+1;
                  if(temp<=2) {
                    viewModel.svgIdx.value=temp;
                  }
                  else{
                    viewModel.navToLogin();
                  }
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
