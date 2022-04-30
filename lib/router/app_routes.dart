import 'package:flutter/material.dart';
import 'package:flutter_widgets/models/models.dart';
import 'package:flutter_widgets/screens/screens.dart';


class AppRoutes {

  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
  // Todo: borrar home
      //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled ), 
      MenuOption(route: 'listview1', name: 'Listview tipo1', screen: const Listview1Screen(), icon: Icons.ad_units_rounded ),
      MenuOption(route: 'listview2', name: 'Listview tipo2', screen: const Listview2Screen(), icon: Icons.ad_units_rounded ),
      MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.notification_important_rounded ),
      MenuOption(route: 'card', name: 'Terjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card_rounded ),
      MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined ),
      MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded ),
      MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InPutScreen(), icon: Icons.input_rounded),
      MenuOption(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
      MenuOption(route: 'listviuwBuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListviewBuilderScreen(), icon: Icons.build_circle_outlined),
      
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes () {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home': ( BuildContext context) => const HomeScreen() });

    for ( final option  in menuOptions ) {
      appRoutes.addAll({option.route: ( BuildContext context) => option.screen});
    }
    return appRoutes;
  }


static Route<dynamic> onGenerateRoute( RouteSettings settings) {
         return MaterialPageRoute(
            builder: (context) => const AlertScreen()
        );
      }


}