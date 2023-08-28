import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/data_table.dart';
import 'cupertino-AlertDialog.dart';
import 'cupertino_DatePicker.dart';
import 'cupertino_Picker.dart';
import 'cupertino_actionSheet.dart';
import 'cupertino_contextMenue.dart';
import 'cupertino_indicator.dart';
import 'cupertino_pageroute.dart';
import 'cupertino_scrollbar.dart';
import 'cupertino_searchTextField.dart';
import 'cupertino_segmentedcontrol.dart';
import 'cupertino_switc.dart';
import 'cupertino_tabScaffold.dart';


class Cupertino extends StatelessWidget {
  const Cupertino({Key? key}) : super(key: key);
  static const style =TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
          primaryColor: Colors.blue,
          //textStyle:style,
        ),
        scaffoldBackgroundColor: Color.fromRGBO(18, 32, 47, 1),
        primaryColor: CupertinoColors.systemIndigo,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Container(child: const Text('Cupertino Title'),),
          padding: const EdgeInsetsDirectional.only(bottom: 5),
        ),
        child: Cupertino_Scrollbar(),
      ),
    );
  }
}
