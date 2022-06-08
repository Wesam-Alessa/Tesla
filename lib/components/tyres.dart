import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> tyres(BoxConstraints constrains) {
  return [
    Positioned(
      top: constrains.maxHeight * 0.22,
      left: constrains.maxWidth * 0.2,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      top: constrains.maxHeight * 0.22,
      right: constrains.maxWidth * 0.2,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      top: constrains.maxHeight * 0.63,
      left: constrains.maxWidth * 0.2,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      top: constrains.maxHeight * 0.63,
      right: constrains.maxWidth * 0.2,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
  ];
}