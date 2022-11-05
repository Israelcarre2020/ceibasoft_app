import 'package:flutter/material.dart';

import '../../domain/entities/post_model.dart';
import '../../domain/entities/user_model.dart';
import '../widgets/custom_user_card.dart';
import '../widgets/post_card.dart';

class DetailUserPage extends StatelessWidget {
  final List<PostModel> userPosts;
  final UserModel user;

  const DetailUserPage(this.userPosts, this.user);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Detail user')),
      body: Column(
        children: [
          CustomUserCard(user: user),
          const SizedBox(height: 20),
          Text(
            'Posts Del Usuario: ${userPosts.length}',
            style: theme.textTheme.headline4,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: userPosts.length,
                itemBuilder: (context, index) {
                  return PostCard(post: userPosts[index]);
                }),
          )
        ],
      ),
    );
  }
}
