library custom_app_bar;

import 'package:flutter/material.dart';

/// A Custom MyAppBar.
class MyAppBar {
  static AppBar buildAppBar(BuildContext context, String titleText,
      {List<Widget> actions,
      Color backgroundColor = Colors.white,
      bool centerTitle: false}) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      //实际为15，是leading的内边距
      titleSpacing: 0,
      elevation: 0,
      leadingWidth: 62,
      actions: actions,
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          alignment: Alignment.center,
          child: Container(
            height: 32,
            width: 32,
            child: Card(
                elevation: 3,
                shadowColor: Color(0xFF697FFE),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                )),
          ),
        ),
      ),
      title: Container(
        child: Text(
          titleText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
