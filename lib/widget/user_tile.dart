import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liste_et_louer/pages/detail_page.dart';

import '../model/user.dart';

class UserTile extends StatelessWidget{

  final  User user;
  const UserTile({super.key, required this.user});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.fullName),
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: user.color,
        child: Text(user.initial),
      ),

      onTap: (){
        MaterialPageRoute route = MaterialPageRoute(builder: (context) => DetailPage(user: user));
        Navigator.of(context).push(route);
      },
    );
  }
}