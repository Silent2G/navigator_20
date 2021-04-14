import 'package:flutter/material.dart';

import 'custom_bottom_navigation_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int)? onChange;
  final int? currentIndex;

  CustomBottomNavigationBar({
    @required this.currentIndex,
    @required this.onChange,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Container(
        height: 70,
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomBottomNavigationItem(
                  index: 0,
                  selectedIndex: widget.currentIndex,
                  iconPath: "assets/images/svg/ic_home_nav.svg",
                  label: "ONE",
                  onChange: widget.onChange,
                ),
                CustomBottomNavigationItem(
                  index: 1,
                  selectedIndex: widget.currentIndex,
                  iconPath: "assets/images/svg/ic_discounts_nav.svg",
                  label: "TWO",
                  onChange: widget.onChange,
                ),
                CustomBottomNavigationItem(
                  index: 2,
                  selectedIndex: widget.currentIndex,
                  iconPath: "assets/images/svg/ic_favorites_nav.svg",
                  label: "THREE",
                  onChange: widget.onChange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
