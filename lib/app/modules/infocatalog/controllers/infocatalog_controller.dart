import 'package:get/get.dart';

class InfocatalogController extends GetxController {
  //TODO: Implement InfocatalogController

  final count = 1.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void decrement() {
    if (count > 1) {
      count.value--;
    }
  }
}
