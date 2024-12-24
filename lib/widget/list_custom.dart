import 'package:flutter/cupertino.dart';
import 'package:liste_et_louer/datas/user_datas.dart';
import 'package:liste_et_louer/widget/user_tile.dart';

class ListCustom extends StatelessWidget{
  const ListCustom({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
              return UserTile(user: users[index]);
            },
            childCount: users.length
        )
    );
  }
}