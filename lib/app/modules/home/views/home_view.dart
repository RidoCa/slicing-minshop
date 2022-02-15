import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:minishop/app/modules/catalog/views/catalog_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CatalogView();
  }
}
