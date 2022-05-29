import 'package:get/get.dart';
import 'package:example/ui/routes_ui.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.RESETPASSWORD,
      page: () => const ResetPassword(),
    ),
    GetPage(
      name: Routes.CHANGEPASSWORD,
      page: () => const ChangePassword(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.VIEWALLCATEGORYS,
      page: () => const ViewAllCategorys(),
    ),
    GetPage(
      name: Routes.DETAILALLCATEGORYS,
      page: () => const DetailCategoria(),
    ),
  ];
}
