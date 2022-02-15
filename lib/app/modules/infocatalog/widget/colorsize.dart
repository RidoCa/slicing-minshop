import 'package:flutter/material.dart';

import 'package:minishop/app/data/contains.dart';
import 'package:minishop/app/modules/infocatalog/widget/dotcolor.dart';

class colorSize extends StatelessWidget {
  final Color color, color2, color3;
  final bool isSelected, isSelected2, isSelected3;
  const colorSize({
    Key? key,
    required this.color,
    required this.color2,
    required this.color3,
    required this.isSelected,
    required this.isSelected2,
    required this.isSelected3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    color: color,
                    isSelected: isSelected,
                  ),
                  ColorDot(
                    color: color2,
                    isSelected: isSelected2,
                  ),
                  ColorDot(
                    color: color3,
                    isSelected: isSelected3,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: kTextColor,
              ),
              children: [
                TextSpan(
                  text: 'Size\n',
                ),
                TextSpan(
                  text: '12cm',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
