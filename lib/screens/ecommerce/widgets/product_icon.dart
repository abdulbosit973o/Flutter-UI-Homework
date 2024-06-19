import 'package:flutter/material.dart';
import 'package:homework_lesson_5/screens/ecommerce/widgets/extentions.dart';
import 'package:homework_lesson_5/screens/ecommerce/widgets/title_text.dart';

import '../../course_ui/color/light_color.dart';
import '../../course_ui/theme/theme.dart';
import '../model/category.dart';

class ProductIcon extends StatelessWidget {
  // final String imagePath;
  // final String text;
  final ValueChanged<Category> onSelected;
  final Category model;
  ProductIcon({required this.model, required this.onSelected});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:
      8.0),
      child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Container(
              padding: AppTheme.hPadding,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: model.isSelected
                    ? LightColor.background
                    : Colors.transparent,
                border: Border.all(
                  color: model.isSelected ? LightColor.orange : LightColor.grey,
                  width: model.isSelected ? 2 : 1,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: model.isSelected ? Color(0xfffbf2ef) : Colors.white,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/apple.png'),
                  ),
                  model.name == null
                      ? Container()
                      : Container(
                          child: TitleText(
                            text: model.name,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        )
                ],
              ),
            ).ripple(
              () {
                onSelected(model);
              },
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
    );
    }
}
