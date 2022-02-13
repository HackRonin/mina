import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mina/app/config/app_color.dart';


import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

class Mina extends StatelessWidget {
  const Mina({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    // Fixing App Orientation.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: fabColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light);
    SystemChrome.setSystemUIOverlayStyle(dark);

    return ScreenUtilInit(
        designSize: const Size(411, 823),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: () =>  GetMaterialApp(
            debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColor.bgColor,
          ),
          initialRoute: AppRoutes.rootPage,
          getPages: AppPages.list,
        )
    );
  }
}