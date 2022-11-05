import 'package:flutter/material.dart';

import '../../../../shared/theme/app_colors_theme.dart';
import '../../domain/entities/post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              post.title,
              style: theme.textTheme.caption!
                  .copyWith(color: AppColorsTheme.secondary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              post.body,
              style: theme.textTheme.caption!
                  .copyWith(color: AppColorsTheme.bodytext),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
