import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'ListView Type 1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt, name: 'ListView Type 2', screen: const ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.crop_square_outlined, name: 'Card', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.person_outline, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.animation, name: 'Animated', screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input, name: 'Inputs', screen: const InputsScreen()),
    MenuOption(route: 'slider', icon: Icons.slideshow, name: 'Slider && Checks', screen: const SliderScreen()),
    MenuOption(route: 'listviewbuilder', icon: Icons.list_alt, name: 'ListView Builder', screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
