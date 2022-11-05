import 'package:flutter/material.dart';

import '../../../../shared/theme/app_colors_theme.dart';
import '../../domain/entities/user_model.dart';

class CustomUserCard extends StatelessWidget {
  final UserModel user;
  final Function(int)? onPress;

  const CustomUserCard({required this.user, this.onPress});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      elevation: 5,
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Text(user.name,
                      style: theme.textTheme.button!
                          .copyWith(color: AppColorsTheme.secondary))),
              _userDataWithIcon(user.phone, Icons.phone, theme),
              _userDataWithIcon(user.email, Icons.mail, theme),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (onPress != null)
                    TextButton(
                        onPressed: () {
                          onPress!(user.id);
                        },
                        child: Text('Ver publicaciones',
                            style: theme.textTheme.button))
                  else
                    const SizedBox()
                ],
              )
            ],
          )),
    );
  }

  Widget _userDataWithIcon(String data, IconData icon, ThemeData theme) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColorsTheme.secondary,
        ),
        const SizedBox(width: 5),
        Text(data, style: theme.textTheme.bodySmall)
      ],
    );
  }
}
