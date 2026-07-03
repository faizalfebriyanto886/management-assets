import 'package:get/get.dart';
import 'package:management_asset/presentations/page/detail_asset/view/detail_asset_view.dart';
import 'package:management_asset/presentations/page/home/view/home_page.dart';
import 'package:management_asset/presentations/page/navbar/view/navbar_view.dart';
import 'package:management_asset/presentations/page/splash/view/splash_view.dart';

class GetXroutes {
  static final List<GetPage> routes = [
    GetPage(
      name: NavbarView.routeName,
      page: () => const NavbarView(),
      binding: NavbarBindings()
    ),
    GetPage(
      name: SplashView.routeName,
      page: () => const SplashView(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => const HomePage(),
      binding: HomeBindings()
    ),
    GetPage(
      name: DetailAssetView.routeName,
      page: () => const DetailAssetView(),
      binding: DetailAssetBindings()
    ),
  ];
}