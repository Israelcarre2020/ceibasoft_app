import 'package:flutter/material.dart';

import '../../../../shared/routes/app_routes.dart';
import '../../../../shared/utils/navigator_key.dart';

class UsersListPage extends StatelessWidget {
  const UsersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () => Navigator.pushNamed(
                  navigatorKey.currentContext!, AppRoutes.detailUser),
              child: const Text('Navigate'))
        ],
      ),
    );
  }
}
