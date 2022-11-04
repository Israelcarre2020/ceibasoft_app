import 'package:flutter/material.dart';

import 'shared/routes/app_routes.dart';
import 'shared/routes/route_generator.dart';
import 'shared/theme/theme.dart';
import 'shared/utils/navigator_key.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      title: 'Ceiba App',
      navigatorKey: navigatorKey,
      initialRoute: AppRoutes.usersList,
      onGenerateRoute: _onGenerateRoute,
    );
  }

  Route? _onGenerateRoute(RouteSettings settings) {
    return RouteGenerator.generateRoute(settings);
  }
}
