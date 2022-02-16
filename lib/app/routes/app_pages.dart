import 'package:get/get.dart';
import 'package:mina/app/routes/app_routes.dart';
import 'package:mina/presentation/features/root_page/root_page_screen.dart';

Duration get transitionDuration => const Duration(milliseconds: 900);

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.rootPage,
      page: () => RootPageScreens(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: transitionDuration,
      // binding: RootBinding(),
    ),

    //GetPage(name: name, page: page),

  ];
}
