import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_demo/res/routes/route_names.dart';
import 'package:getx_demo/view/home/home_view.dart';
import 'package:getx_demo/view/login/sign_up_view.dart';
import 'package:getx_demo/view/splash_view.dart';

import '../../view/intro/intro_view.dart';
import '../../view/login/login_view.dart';
import '../../view/login/otp_view.dart';

class AppRoutes{
  static var routes=[
    GetPage(name: RouteNames.loginView, page:() =>  LoginView()),
    GetPage(name: RouteNames.homeView, page:() =>  HomeView()),
    GetPage(name: RouteNames.splashView, page:() => SplashView()),
    GetPage(name: RouteNames.introView, page:() => IntroView()),
    GetPage(name: RouteNames.otpView, page:() => OtpView()),
    GetPage(name: RouteNames.signUpView, page:() => SignUpView()),
  ];
}