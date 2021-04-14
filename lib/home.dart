import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_bottom_navigation.dart';

class Home extends StatefulWidget {
  final Widget? child1;
  final Widget? child2;
  final Widget? child3;

  Home({@required this.child1, @required this.child2, @required this.child3});

  @override
  State createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  List<Widget> items = [];

  initState() {
    super.initState();

    items = [
      widget.child1!,
      widget.child2!,
      widget.child3!
    ];
  }

  int tabSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: tabSelectedIndex,
        onChange: (int value) {
          setState(() {
            tabSelectedIndex = value;
          });
        },
      ),
    );
  }

  Widget _buildPage() {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      child: IndexedStack(index: tabSelectedIndex, children: items),
    );
  }
}
