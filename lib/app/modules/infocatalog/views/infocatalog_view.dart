import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:minishop/app/data/contains.dart';
import 'package:minishop/app/modules/catalog/models/product_model.dart';
import 'package:minishop/app/modules/infocatalog/widget/addtocart.dart';
import 'package:minishop/app/modules/infocatalog/widget/colorsize.dart';
import 'package:minishop/app/modules/infocatalog/widget/dotcolor.dart';
import 'package:minishop/app/modules/infocatalog/widget/iteminfocatalog.dart';

import '../controllers/infocatalog_controller.dart';
import '../widget/cartcounter.dart';

class InfocatalogView extends GetView<InfocatalogController> {
  var datakiriman = Get.arguments;
  Size size = MediaQuery.of(Get.context!).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: datakiriman[0].color,
      appBar: AppBar(
        backgroundColor: datakiriman[0].color,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
            ),
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    margin: EdgeInsets.only(top: size.height * 0.38),
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: colorSize(
                              color: Color(0xFF356C95),
                              color2: Color(0xFFF8C078),
                              color3: Color(0xFFA29B9B),
                              isSelected: true,
                              isSelected2: false,
                              isSelected3: false),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: kDefaultPadding,
                          ),
                          child: Text(
                            datakiriman[0].description,
                            style: TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartCounter(),
                            Container(
                              padding: EdgeInsets.all(8),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF6464),
                                shape: BoxShape.circle,
                              ),
                              child: InkWell(
                                onTap: () {},
                                child:
                                    SvgPicture.asset("assets/icons/heart.svg"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: kDefaultPadding / 2),
                        AddToCart(
                          colors: datakiriman[0].color,
                        ),
                      ],
                    ),
                  ),
                  itemInfoCatalog(
                    product: datakiriman[0],
                    size: size,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
