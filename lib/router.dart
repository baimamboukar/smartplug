import 'package:auto_route/auto_route.dart';
import 'package:smart_plug/main.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Home, initial: true),
  ],
)
class $AppRouter {}
