import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minishop/app/data/contains.dart';

import '../controllers/infocatalog_controller.dart';

class CartCounter extends StatelessWidget {
  final InfocatalogController _infocatalogcontroller =
      Get.put(InfocatalogController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
            onPressed: () {
              _infocatalogcontroller.decrement();
            },
            child: Icon(
              Icons.remove,
            ),
          ),
        ),
        Obx(
          () => Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Text(
              // if our item is less  then 10 then  it shows 01 02 like that
              _infocatalogcontroller.count.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
            onPressed: () {
              _infocatalogcontroller.increment();
            },
            child: Icon(
              Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}
