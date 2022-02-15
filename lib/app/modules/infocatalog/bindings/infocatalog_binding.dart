import 'package:get/get.dart';

import '../controllers/infocatalog_controller.dart';

class InfocatalogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfocatalogController>(
      () => InfocatalogController(),
    );
  }
}
