import 'package:flutter/material.dart';
import 'package:getx_demo/view_models/service/splash_service.dart';

import '../Theme/r.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
SplashService splashService=SplashService();
  @override
  void initState() {
    super.initState();
    splashService.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(child: Image.asset(R.assets.google),));
  }
}
