import 'package:flutter/cupertino.dart';
import 'package:learning_flutter_wigdets/nav_other_method/back_scr.dart';
import 'package:learning_flutter_wigdets/nav_other_method/splash_screen.dart';

import 'home_scr.dart';

class AppRoutes {
  static final String SPLASHSCREEN = "splashscreen";
  static final String HOMESCREEN = "home";
  static final String BACKSCREEN = "/back";

  static final Map<String, WidgetBuilder> appRoute = {
    "splashscreen": (context) => splash_scr(),
    "home": (context) => home_scr(),
    // "back"            :     (context) => back_screen(name: ),
  };

  // static Route<dynamic> getRoute(RouteSettings settings) {
  //
  //   switch(settings.name) {
  //
  //     case BACKSCREEN:
  //       String text = settings.arguments as String;
  //           (context) => back_screen(name: text);
  //   }
}
