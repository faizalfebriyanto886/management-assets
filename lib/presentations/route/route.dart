import 'package:get/get.dart';
import 'package:management_asset/presentations/page/login/view/login_view.dart';
import 'package:management_asset/presentations/page/navbar/view/navbar_view.dart';
import 'package:management_asset/presentations/page/splash/view/splash_view.dart';

class GetXroutes {
  static final List<GetPage> routes = [
    GetPage(
      name: LoginView.routeName,
      page: () => const LoginView(),
    ),
    GetPage(
      name: NavbarView.routeName,
      page: () => const NavbarView(),
      binding: NavbarBindings()
    ),
    GetPage(
      name: SplashView.routeName,
      page: () => const SplashView(),
    ),
  ];
}