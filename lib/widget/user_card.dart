import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/user.dart';

class UserCard extends StatelessWidget{

  final User user;

  const UserCard ({required super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: user.color.withOpacity(0.2),
      margin: const EdgeInsets.all(12),
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
        child: Column(
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: user.color ,
              child: Text(user.initial),
            ),

            const SizedBox(height: 16),
            Text(user.fullName, style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
      )

    );
  }
}