import 'package:flutter/material.dart';
import 'package:single_state_provider_man/Screens/counter.dart';
import 'package:single_state_provider_man/Screens/slidercontainer.dart';
import 'package:single_state_provider_man/Utils/routename.dart';
import 'package:single_state_provider_man/stf_widget.dart';

class Routes {
  static Route<dynamic> generatesRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.myStfWidget:
        return MaterialPageRoute(
            builder: (context) => const MyStateFullWidget());
      case RoutesName.myCount:
        return MaterialPageRoute(builder: (context) => const MyCounter());
      case RoutesName.mySlider:
        return MaterialPageRoute(builder: (context) => const SlideProvider());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
                child: Text(
              "404 Error",
              style: TextStyle(fontSize: 30),
            )),
          );
        });
    }
  }
}
