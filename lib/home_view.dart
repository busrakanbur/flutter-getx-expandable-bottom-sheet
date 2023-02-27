import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expandable bottom')),
      body: ExpandableBottomSheet(
          persistentFooter: Container(
            height: 60,
            color: Colors.red,
            child: Center(child: Text('content')),
          ),
          persistentHeader: Container(
            height: 40,
            color: Colors.blue,
            child: Center(child: Text('header')),
          ),
          expandableContent: Container(
            height: 500,
            color: Colors.grey,
            child: Center(child: Text('content')),
          ),
          background: Container(
            height: 400,
            color: Colors.green,
            child: Center(child: Text('background')),
          )),
    );
  }
}
