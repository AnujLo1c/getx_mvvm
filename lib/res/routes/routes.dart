import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_demo/res/routes/route_names.dart';

import '../../view/login/login_view.dart';

class AppRoutes{
  static var routes=[
    GetPage(name: RouteNames.loginView, page:() =>  LoginView())
  ];
}