import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:minishop/app/data/contains.dart';
import 'package:minishop/app/modules/catalog/models/product_model.dart';
import 'package:minishop/app/modules/catalog/widget/appbar.dart';
import 'package:minishop/app/modules/catalog/widget/itemcatalog.dart';
import 'package:minishop/app/modules/infocatalog/views/infocatalog_view.dart';

import '../controllers/catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //text header
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Text(
              'Women',
              style: Theme.of(Get.context!).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          //scrollable menu
          Container(
            height: 30,
            margin: EdgeInsets.only(left: kDefaultPadding / 2, top: 18.8),
            child: DefaultTabController(
              length: 5,
              child: TabBar(
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 14.4,
                ),
                indicatorPadding: EdgeInsets.symmetric(
                  horizontal: 14.4,
                ),
                isScrollable: true,
                labelColor: Color(0xFF000000),
                unselectedLabelColor: Color(0xFF8a8a8a),
                tabs: [
                  Tab(
                    child: Container(
                      child: Text(
                        'Hand Bag',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Jewellery',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Footwear',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Dresses',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'Other',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //list bag
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: 30),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => itemCatalog(
                product: products[index],
                press: () => Get.to(() => InfocatalogView(),
                    arguments: [products[index]]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
