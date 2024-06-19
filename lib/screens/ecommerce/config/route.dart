import 'package:flutter/material.dart';

import '../pages/mainPage.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(title: '',),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
