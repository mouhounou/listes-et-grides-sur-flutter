import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liste_et_louer/model/list_type.dart';
import 'package:liste_et_louer/widget/builder.dart';
import 'package:liste_et_louer/widget/list_custom.dart';
import 'package:liste_et_louer/widget/separated.dart';
import 'package:liste_et_louer/widget/simple_list.dart';

import '../model/user.dart';



class HomePage extends StatelessWidget{

  HomePage({super.key});

  final List <ListType> _lists = [
    ListType("simple", Icons.list, const SimpleListView()),
    ListType("builder", Icons.settings,  BuilderWidget()),
    ListType("separee", Icons.filter_list, Separated()),
    ListType("custom", Icons.list_outlined, ListCustom()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _lists.length,
        child: Scaffold(
          appBar:  AppBar(
            title: const Text("liste et  grille"),
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            bottom: TabBar(
              tabs: _lists.map((item) => item.tab).toList(),
            ),
          ),
          
          body: TabBarView(
              children: _lists.map((item) => item.list).toList()
          ),
        )
    );
  }
}