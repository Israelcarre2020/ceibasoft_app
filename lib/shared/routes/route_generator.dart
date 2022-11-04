import 'package:flutter/material.dart';

import '../../features/users_list/presentation/pages/detail_user_page.dart';
import '../../features/users_list/presentation/pages/users_list_page.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map?;
    final availableRoutes = getAvailableRoutes(args);
    final page = availableRoutes[settings.name]!;

    return MaterialPageRoute(settings: settings, builder: page);
  }

  static Map<String, WidgetBuilder> getAvailableRoutes(Map? args) {
    return {
      AppRoutes.usersList: (_) => const UsersListPage(),
      AppRoutes.detailUser: (_) => const DetailUserPage(),
      AppRoutes.generalError: (_) => const DetailUserPage(),
    };
  }
}
