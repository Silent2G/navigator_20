import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationItem extends StatefulWidget {
  final int index;
  final int selectedIndex;
  final String iconPath;
  final String label;
  final Function(int) onChange;

  CustomBottomNavigationItem(
      {@required this.index,
        @required this.selectedIndex,
        @required this.iconPath,
        @required this.label,
        @required this.onChange});

  @override
  State createState() {
    return CustomBottomNavigationItemState();
  }
}

class CustomBottomNavigationItemState
    extends State<CustomBottomNavigationItem> {
  void _changeIndex(int index) {
    widget.onChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: InkWell(
        radius: 80,
        onTap: () {
          _changeIndex(widget.index);
        },
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  widget.iconPath,
                  width: 20,
                  height: 20,
                  color: widget.selectedIndex == widget.index
                      ? Colors.black
                      : Colors.grey,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                child: AnimatedDefaultTextStyle(
                  style: widget.selectedIndex == widget.index
                      ? TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontWeight: FontWeight.w700)
                      : TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  duration: const Duration(milliseconds: 50),
                  child: Text(widget.label),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
