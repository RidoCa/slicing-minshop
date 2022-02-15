import 'package:get/get.dart';

import '../modules/catalog/bindings/catalog_binding.dart';
import '../modules/catalog/views/catalog_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/infocatalog/bindings/infocatalog_binding.dart';
import '../modules/infocatalog/views/infocatalog_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CATALOG,
      page: () => CatalogView(),
      binding: CatalogBinding(),
    ),
    GetPage(
      name: _Paths.INFOCATALOG,
      page: () => InfocatalogView(),
      binding: InfocatalogBinding(),
    ),
  ];
}
