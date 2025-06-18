
import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:getx_demo/res/routes/route_names.dart';
import 'package:getx_demo/res/routes/routes.dart';


 main() {

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // primaryColor: Color(0xFF1A9EB7),

        useMaterial3: true,
      ),
      getPages: AppRoutes.routes,
      initialRoute: RouteNames.splashView,

    );
  }
}
