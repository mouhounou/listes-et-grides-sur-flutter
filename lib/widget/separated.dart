import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liste_et_louer/widget/user_tile.dart';
import '../datas/user_datas.dart';
import '../model/user.dart';

class Separated extends StatefulWidget {
  Separated({Key? key}) : super(key: key);

  @override
  State<Separated  > createState() {
    return _Separated();
  }
}



class _Separated extends State<Separated>{

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: ((BuildContext context, int index) =>
          Dismissible(
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 16),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
              key: UniqueKey(),
              onDismissed: (direction){
                 setState(() {
                   users.removeAt(index);
                 });
              },
              child: UserTile(user: users[index])
          )
      ),
      separatorBuilder: (BuildContext context,  index) =>  Divider(
        indent: 8,
        endIndent: 8,
        color: users[index].color,
      ),
      itemCount: users.length,
    );
  }
}
