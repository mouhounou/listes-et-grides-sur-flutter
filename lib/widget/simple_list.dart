import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart.dart';

class SimpleListView extends StatefulWidget {

  const SimpleListView({super.key});

  @override
  State<SimpleListView> createState() {
    return _SimpleListView();
  }
}






class _SimpleListView extends State<SimpleListView>{


  bool _isOn = true;
  double _fontsize = 12;


  updateSlider(double newValue){
    setState(() {
      _fontsize = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
   return ListView(
     children:  [
      const ListTile(
         title: const Text("la premiere list"),
         subtitle: Text("Nous avons pu creer une nouvelle liste"),
         leading: Icon(Icons.search),
         trailing: Icon(Icons.navigate_next),
       ),

      ListTile(

         title: const Text("Notification"),
         leading: Icon(_isOn? Icons.notifications: Icons.notifications_off),
         trailing: Switch(
             value: _isOn,
             onChanged: (b){
               setState(() {
                 _isOn = b;
               });
             },
         ),
       ),
        
        ListTile(
          leading: const Icon(Icons.text_fields),
          title: Text('Taille du texte', style: TextStyle(fontSize: _fontsize)),
          trailing: SizedBox(
            width: 100,
            child: Slider(
                min: 12,
                max: 24,
                value: _fontsize,
                onChanged: updateSlider ),
          )
        )
     ],
   );
  }


}