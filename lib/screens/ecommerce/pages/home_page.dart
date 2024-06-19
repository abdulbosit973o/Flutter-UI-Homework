import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:homework_lesson_5/screens/ecommerce/widgets/extentions.dart';

import '../../course_ui/color/light_color.dart';
import '../../course_ui/theme/theme.dart';
import '../model/data.dart';
import '../widgets/product_card.dart';
import '../widgets/product_icon.dart';

class MyHomePage extends StatefulWidget {

  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _icon(IconData icon, {Color color = LightColor.iconColor}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          color: Colors.white,
          boxShadow: AppTheme.shadow),
      child: Icon(
        icon,
        color: color,
      ),
    ).ripple(() {}, borderRadius: const BorderRadius.all(Radius.circular(13)));
  }

  Widget _categoryWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: AppData.categoryList
            .map(
              (category) => ProductIcon(
                model: category,
                onSelected: (model) {
                  setState(() {
                    for (var item in AppData.categoryList) {
                      item.isSelected = false;
                    }
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _productWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullWidth(context) * .7,
      child: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.5,
              mainAxisSpacing: 30,
              crossAxisSpacing: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          children: AppData.productList
              .map(
                (product) => ProductCard(
                  product: product,
                  onSelected: (model) {
                    setState(() {
                      AppData.productList.forEach((item) {
                        item.isSelected = false;
                      });
                    });
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _search() {
    return Container(
      margin: AppTheme.padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: LightColor.lightGrey.withAlpha(100),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Products",
                      hintStyle: TextStyle(fontSize: 14),
                      contentPadding:
                          EdgeInsets.only(left: 12, right: 12, top: 9),
                      prefixIcon: Icon(Icons.search, color: Colors.black54)),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          _icon(Icons.filter_list, color: Colors.black54)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 210,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _search(),
            _categoryWidget(),
            _productWidget(),
          ],
        ),
      ),
    );
  }
}
