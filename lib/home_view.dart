import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_bottom_sheet/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expandable bottom')),
      body: Container(
        child: ExpandableBottomSheet(
            key: controller.key,
            enableToggle: true,
            persistentFooter: Container(
              height: 60,
              color: Colors.red,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                        onPressed: () {
                          controller.key.currentState!.expand();
                        },
                        icon: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          controller.expansionStatus.value =
                              controller.key.currentState!.expansionStatus;
                        },
                        icon: Icon(
                          Icons.cloud,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          controller.key.currentState!.contract();
                        },
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ))
                  ]),
            ),
            expandableContent: Container(
              height: 200,
              color: Color.fromARGB(255, 253, 253, 253),
              child: Center(child: Text('content')),
            ),
            background: Container(
              color: Color.fromARGB(255, 215, 215, 215),
              child: Center(child: Text('background')),
            )),
      ),
    );
  }
}
