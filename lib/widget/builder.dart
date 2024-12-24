import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liste_et_louer/model/user.dart';
import 'package:liste_et_louer/widget/user_card.dart';

import '../datas/user_datas.dart';

class BuilderWidget extends StatelessWidget{
  
   BuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
        itemBuilder: (BuildContext context, int index){
        User user = users[index];
          return UserCard(key: key, user: user);
        }
    );
  }
}