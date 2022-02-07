import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:sizer/sizer.dart';

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

    return Sizer(
      builder: (context, orientation, deviceType){
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          initialRoute: AppRoutes.rootPage,
          getPages: AppPages.list,
        );
      }
    );
  }
}