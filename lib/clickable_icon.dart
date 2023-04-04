import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClickableIcon extends StatelessWidget {
  VoidCallback? handleOnTap;
  Icon? icon;
  ClickableIcon(this.handleOnTap, this.icon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleOnTap,
      child: icon,
    );
  }
}
